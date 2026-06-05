using ANS.Common.ServiceLocator;
using UnityEngine;

namespace Idler
{
    public class State_Resource_FollowCursor : State_Resource_Base
    {
        [SerializeField] private float followSpeed = 0.3f;
        [SerializeField] private float minRadius   = 0.5f;
        [SerializeField] private float maxRadius   = 2.0f;

        private IMainUI uiCtrl;
        private Vector3 followVelocity;
        private Vector3 offset;

        public override void OnActivate()
        {
            base.OnActivate();
            uiCtrl = ServiceLocator.Current.Get<IMainUI>();

            // build two axes perpendicular to the camera ray
            var ray  = uiCtrl.CursorCtrl.CursorRay;
            var perpA = Vector3.Cross(ray.direction, Vector3.up).normalized;
            var perpB = Vector3.Cross(ray.direction, perpA).normalized;

            // scatter at a random angle and radius within the perpendicular plane
            var angle  = Random.Range(0f, Mathf.PI * 2f);
            var radius = Random.Range(minRadius, maxRadius);
            offset = (Mathf.Cos(angle) * perpA + Mathf.Sin(angle) * perpB) * radius;
        }

        public override void OnDeactivate()
        {
            base.OnDeactivate();
        }

        private void Update()
        {
            var ray = uiCtrl.CursorCtrl.CursorRay;
            // project ray onto the resource's Z plane to get a valid world-space target
            var t           = (Ctrl.transform.position.z - ray.origin.z) / ray.direction.z;
            var worldTarget = ray.GetPoint(t) + offset;
            Ctrl.transform.position = Vector3.SmoothDamp(Ctrl.transform.position, worldTarget, ref followVelocity, followSpeed);
        }
    }
}
