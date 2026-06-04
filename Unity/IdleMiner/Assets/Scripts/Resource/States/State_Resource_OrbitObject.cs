using DG.Tweening;
using UnityEngine;
using Random = UnityEngine.Random;

namespace Idler.States
{
    public class State_Resource_OrbitObject : State_Resource_Base
    {
        private const float minRadius = 7f;
        private const float maxRadius = 12f;
        private const float moveDuration = 0.5f;
        private const float orbitSpeed   = 30f; // degrees per second

        private bool orbiting;

        public override void OnActivate()
        {
            base.OnActivate();
            orbiting = false;
            var orbit     = Ctrl.OrbitTransform;
            var randRadius = Random.Range(minRadius, maxRadius);
            var angle      = Random.Range(0f, Mathf.PI * 2f);
            var dir        = orbit.right * Mathf.Cos(angle) + orbit.up * Mathf.Sin(angle);
            var targetPos  = orbit.position + dir * randRadius;

            Ctrl.transform.DOMove(targetPos, moveDuration)
                .SetEase(Ease.OutQuad)
                .OnComplete(() =>
                {
                    orbiting    = true;
                });
        }

        private void Update()
        {
            if (!orbiting) return;
            Ctrl.transform.RotateAround(Ctrl.OrbitTransform.position, Ctrl.OrbitTransform.forward, orbitSpeed * Time.deltaTime);
        }

        public override void OnDeactivate()
        {
            base.OnDeactivate();
            orbiting = false;
            Ctrl.transform.DOKill();
        }
    }
}