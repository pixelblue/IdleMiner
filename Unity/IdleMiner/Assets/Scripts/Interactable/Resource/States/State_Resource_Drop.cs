using ANS_Core.Utilities;
using ANS.Common.ServiceLocator;
using DG.Tweening;
using UnityEngine;

namespace Idler
{
    public class State_Resource_Drop : State_Resource_Base
    {
        private const float duration  = 0.4f;
        private const float arcHeight = 80f; // screen-space pixels at peak

        private IResource resourceCtrl;

        public override void OnActivate()
        {
            base.OnActivate();
            resourceCtrl ??= ServiceLocator.Current.Get<IResource>();

            var rect     = Ctrl.InteractableUICtrl.RectTransform;
            var startPos = rect.position;
            var endPos   = Ctrl.DropTarget.position;

            Ctrl.LockUIPosition = true;
            DOVirtual.Float(0f, 1f, duration, t =>
            {
                var pos  = Vector3.Lerp(startPos, endPos, t);
                // sin curve peaks at t=0.5 and returns to 0 at t=1
                pos.y   += Mathf.Sin(t * Mathf.PI) * arcHeight;
                rect.position = pos;
            })
            .SetEase(Ease.Linear)
            .OnComplete(() =>
            {
                resourceCtrl.Add(Ctrl.ResourceData, Ctrl.Amount);
                Ctrl.LockUIPosition = false;
                Ctrl.DespawnUIElement();
                PoolCtrl.Release(Util.GetNameWithoutClone(Ctrl.gameObject.name), Ctrl);
            });
        }

        public override void OnDeactivate()
        {
            base.OnDeactivate();
            DOTween.Kill(Ctrl.InteractableUICtrl?.RectTransform);
            Ctrl.LockUIPosition = false;
        }
    }
}
