using ANS.Common.ServiceLocator;
using UnityEngine;

namespace Idler
{
    public class State_Resource_FollowCursor : State_Resource_Base
    {
        private const float followSpeed = 0.3f;
        private const float minRadius   = 10f;
        private const float maxRadius   = 15f;

        private IMainUI uiCtrl;
        private Vector3 followVelocity;
        private Vector2 offset;

        public override void OnActivate()
        {
            base.OnActivate();
            uiCtrl = ServiceLocator.Current.Get<IMainUI>();

            var angle  = Random.Range(0f, Mathf.PI * 2f);
            var radius = Random.Range(minRadius, maxRadius);
            offset = new Vector2(Mathf.Cos(angle) * radius, Mathf.Sin(angle) * radius);
        }

        public override void OnDeactivate()
        {
            base.OnDeactivate();
        }

        private void Update()
        {
            var screenPos = uiCtrl.CursorCtrl.ScreenPosition;
            var target = new Vector3(screenPos.x + offset.x, screenPos.y + offset.y, Ctrl.RectTransform.position.z);
            Ctrl.RectTransform.position = Vector3.SmoothDamp(Ctrl.RectTransform.position, target, ref followVelocity, followSpeed);
        }
    }
}
