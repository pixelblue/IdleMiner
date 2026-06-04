using DG.Tweening;
using UnityEngine;
using Random = UnityEngine.Random;

namespace Idler.States
{
    public class State_Resource_OrbitObject : State_Resource_Base
    {
        private const float radius = 20.5f;
        private const float moveDuration = 0.5f;
        private const float orbitSpeed   = 30f; // degrees per second

        private bool orbiting;
        private Vector3 orbitCenter;
        private Vector3 orbitAxis;

        public override void OnActivate()
        {
            base.OnActivate();
            orbiting = false;
            var orbit     = Ctrl.OrbitTransform;
            var scatter   = Random.insideUnitCircle * radius;
            var targetPos = orbit.position + orbit.right * scatter.x + orbit.up * scatter.y;

            Ctrl.transform.DOMove(targetPos, moveDuration)
                .SetEase(Ease.OutQuad)
                .OnComplete(() =>
                {
                    orbitCenter = Ctrl.OrbitTransform.position;
                    orbitAxis   = Ctrl.OrbitTransform.up;
                    orbiting    = true;
                });
        }

        private void Update()
        {
            if (!orbiting) return;
            Ctrl.transform.RotateAround(orbitCenter, orbitAxis, orbitSpeed * Time.deltaTime);
        }

        public override void OnDeactivate()
        {
            base.OnDeactivate();
            orbiting = false;
            Ctrl.transform.DOKill();
        }
    }
}