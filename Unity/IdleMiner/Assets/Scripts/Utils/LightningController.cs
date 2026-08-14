using System;
using ANS_Core.Utilities;
using ANS.Common;
using ANS.Common.ServiceLocator;
using UnityEngine;
using UnityEngine.Splines;

namespace Idler
{
    public class LightningController : MonoBehaviour
    {
        [SerializeField] private SplineContainer splineContainer;
        [SerializeField] private float duration = 0.5f;
        [SerializeField] private float verticalOffset = 1.0f;

        private Vector3 midpointLocal;
        private float lerp;
        
        private void OnEnable()
        {
            lerp = 0f;
        }

        private void Update()
        {
            lerp += Time.deltaTime;

            // Oscillate the center knot vertically using a sine wave
            float offset = Mathf.Sin(lerp / duration * Mathf.PI * 2f) * verticalOffset;
            var spline = splineContainer.Spline;
            spline[1] = new BezierKnot(midpointLocal + Vector3.up * offset);
            
            if(lerp >= duration)
            {
                this.gameObject.SetActive(false);
            }
        }
    }
}