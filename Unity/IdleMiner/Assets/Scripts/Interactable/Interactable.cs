using ANS_Core.Utilities;
using ANS.Common;
using ANS.Common.ServiceLocator;
using UnityEngine;
using UnityEngine.UI;

namespace Idler
{
    public enum CursorBoundsShape { Sphere, Box }
    public enum InteractableContext { Mining, Surface }

    public abstract class Interactable : MonoBehaviour
    {
        [SerializeField] private InteractableUI uiPrefab;
        [SerializeField] private CursorBoundsShape boundsShape;
        [SerializeField] private Vector3 boundsCenter;
        [SerializeField] private float boundsRadius = 1f;
        [SerializeField] private Vector3 boundsSize = Vector3.one;

        public InteractableUI InteractableUICtrl { get; private set; }
        // when true, LateUpdate won't override UI position (e.g. while a DOTween is running)
        public bool LockUIPosition { get; set; }

        protected IPool PoolCtrl;
        protected IMap MapCtrl;
        protected IMainUI MainUI;
        protected ICamera CamCtrl;

        protected virtual void Awake()
        {
            PoolCtrl   = ServiceLocator.Current.Get<IPool>();
            MapCtrl = ServiceLocator.Current.Get<IMap>();
            MainUI = ServiceLocator.Current.Get<IMainUI>();
            CamCtrl = ServiceLocator.Current.Get<ICamera>();
        }

        protected virtual void OnEnable()
        {
            MapCtrl.RegisterInteractable(this);
        }

        protected virtual void OnDisable()
        {
            MapCtrl.UnregisterInteractable(this);
        }

        public virtual void Initialize()
        {
            
        }
        
        private void LateUpdate()
        {
            if (InteractableUICtrl == null || LockUIPosition) return;
            var screenPos = CamCtrl.Cam.WorldToScreenPoint(transform.position);
            screenPos.z = 0f;
            InteractableUICtrl.RectTransform.position = screenPos;
        }

        public abstract void OnCursorEnter(CursorController cursor);
        public abstract void OnCursorExit(CursorController cursor);
        public abstract void OnCursorHit(CursorController cursor);

        public bool IntersectsRay(Ray ray, float cursorRadius)
        {
            return boundsShape == CursorBoundsShape.Sphere
                ? IntersectsSphere(ray, cursorRadius)
                : IntersectsBox(ray, cursorRadius);
        }

        private bool IntersectsSphere(Ray ray, float cursorRadius)
        {
            var center = transform.TransformPoint(boundsCenter);
            var toCenter = center - ray.origin;
            var tca = Vector3.Dot(toCenter, ray.direction);
            // perpendicular distance squared from ray to sphere center
            var d2 = Vector3.Dot(toCenter, toCenter) - tca * tca;
            // scale boundsRadius to world space using the largest axis
            var worldRadius = boundsRadius;
            var combined = worldRadius + cursorRadius;
            return d2 <= combined * combined;
        }

        private bool IntersectsBox(Ray ray, float cursorRadius)
        {
            // transform ray into local space for OBB test
            // derive localDir from two transformed points so scale is applied consistently with localOrigin
            var localOrigin = transform.InverseTransformPoint(ray.origin);
            var localDir    = transform.InverseTransformPoint(ray.origin + ray.direction) - localOrigin;

            // expand half-extents by cursor radius, converting world-space radius to local space per axis
            var scale = transform.lossyScale;
            var expansion = new Vector3(
                cursorRadius / Mathf.Max(Mathf.Abs(scale.x), 1e-4f),
                cursorRadius / Mathf.Max(Mathf.Abs(scale.y), 1e-4f),
                cursorRadius / Mathf.Max(Mathf.Abs(scale.z), 1e-4f)
            );
            var half = boundsSize * 0.5f + expansion;
            var bMin = boundsCenter - half;
            var bMax = boundsCenter + half;

            float tMin = float.NegativeInfinity;
            float tMax = float.PositiveInfinity;

            for (int i = 0; i < 3; i++)
            {
                float d = localDir[i];
                float o = localOrigin[i];
                if (Mathf.Abs(d) < 1e-8f)
                {
                    if (o < bMin[i] || o > bMax[i]) return false;
                }
                else
                {
                    float t1 = (bMin[i] - o) / d;
                    float t2 = (bMax[i] - o) / d;
                    if (t1 > t2) { float tmp = t1; t1 = t2; t2 = tmp; }
                    tMin = Mathf.Max(tMin, t1);
                    tMax = Mathf.Min(tMax, t2);
                    if (tMin > tMax) return false;
                }
            }
            return tMax >= 0f; // ensure intersection is in front of the ray
        }
        
        public InteractableUI SpawnUIElement()
        {
            InteractableUICtrl = PoolCtrl.Spawn(uiPrefab.name, Vector3.zero) as InteractableUI;
            InteractableUICtrl.transform.SetParent(MainUI.ResourceContainer, true);
            return InteractableUICtrl;
        }
        
        public void DespawnUIElement()
        {
            if(InteractableUICtrl != null)
                PoolCtrl.Release(Util.GetNameWithoutClone(uiPrefab.name), InteractableUICtrl);
        }


        private void OnDrawGizmos()
        {
            Gizmos.color = Color.yellow;
            if (boundsShape == CursorBoundsShape.Sphere)
            {
                var gizmoRadius = boundsRadius;
                Gizmos.DrawWireSphere(transform.TransformPoint(boundsCenter), gizmoRadius);
            }
            else
            {
                var prev = Gizmos.matrix;
                Gizmos.matrix = transform.localToWorldMatrix;
                Gizmos.DrawWireCube(boundsCenter, boundsSize);
                Gizmos.matrix = prev;
            }
        }
    }
}
