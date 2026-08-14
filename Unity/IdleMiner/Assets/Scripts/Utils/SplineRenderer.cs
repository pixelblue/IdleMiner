using UnityEngine;
using UnityEngine.Splines;

namespace Idler
{
    [ExecuteAlways]
    public class SplineRenderer : MonoBehaviour
    {
        [SerializeField] private SplineContainer splineContainer;
        [SerializeField] private LineRenderer lineRenderer;
        [SerializeField] private int segments = 50;
        [SerializeField] private float width = 0.1f;

        private void OnEnable() => Rebuild();
        private void OnValidate() => Rebuild();

        private void Update()
        {
            // In editor, keep in sync as the spline is edited
            if (!Application.isPlaying) Rebuild();
        }

        private void Rebuild()
        {
            if (splineContainer == null || lineRenderer == null) return;

            var spline = splineContainer.Spline;
            int pointCount = segments + 1;

            lineRenderer.positionCount = pointCount;
            lineRenderer.startWidth = width;
            lineRenderer.endWidth = width;

            for (int i = 0; i < pointCount; i++)
            {
                float t = i / (float)segments;
                // EvaluatePosition returns a point in spline local space; transform to world
                Vector3 localPos = spline.EvaluatePosition(t);
                lineRenderer.SetPosition(i, splineContainer.transform.TransformPoint(localPos));
            }
        }
    }
}
