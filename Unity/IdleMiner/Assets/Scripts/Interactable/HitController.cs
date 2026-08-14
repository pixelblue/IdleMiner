using System;
using DG.Tweening;
using NaughtyAttributes;
using UnityEngine;
using Random = UnityEngine.Random;

namespace Idler
{
    public enum HitType
    {
        None,
        Scale,
        Vertical,
        Rigidbody
    }
    
    public class HitController : MonoBehaviour
    {
        [SerializeField] private HitType hitType;
        [SerializeField, ShowIf("hitType", HitType.Scale)] private float scaleValue = 1.2f;
        [SerializeField, ShowIf("hitType", HitType.Scale)] private float scaleDuration = 0.2f;
        [SerializeField, ShowIf("hitType", HitType.Vertical)] private Vector2 minMaxVerticalOffset;
        [SerializeField, ShowIf("hitType", HitType.Vertical)] private Vector3 minRotation;
        [SerializeField, ShowIf("hitType", HitType.Vertical)] private Vector3 maxRotation;
        [SerializeField, ShowIf("hitType", HitType.Vertical)] private float verticalDuration = 0.2f;

        private Vector3 origRotation;
        private Vector3 origPos;
        private Vector3 origScale;
        
        private void OnEnable()
        {
            origPos = transform.localPosition;
            origScale = transform.localScale;
            origRotation = transform.localEulerAngles;
        }
        
        public void ApplyHit(HitType inputHitType)
        {
            hitType = inputHitType;
            ApplyHit();
        }

        public void ApplyHit()
        {
            if (hitType == HitType.None) return;

            if (hitType == HitType.Scale)
            {
                transform.DOKill();
                transform.localScale = Vector3.one * scaleValue;
                transform.DOScale(origScale, scaleDuration);
            }

            if (hitType == HitType.Vertical)
            {
                transform.DOKill();
                transform.localPosition = origPos;
                transform.localEulerAngles = origRotation;
                float randomOffset = Random.Range(minMaxVerticalOffset.x, minMaxVerticalOffset.y);
                transform.DOPunchPosition(Vector3.up * randomOffset, verticalDuration, 0, 0.0f);
                
                var randomRotation = new Vector3(
                    Random.Range(minRotation.x, maxRotation.x), 
                    Random.Range(minRotation.y, maxRotation.y), 
                    Random.Range(minRotation.z, maxRotation.z));
                transform.DOPunchRotation(randomRotation, verticalDuration, 0, 0.0f);
            }
        }

    }
}
