using System;
using ANS.Common.ServiceLocator;
using UnityEngine;
using UnityEngine.UI;

namespace Idler
{
    public class CursorHitController : MonoBehaviour
    {
        [SerializeField] private Image hitEffectImage;
        
        private CursorController cursorCtrl;
        private RectTransform hitRectTransform;
        private float hitTimer;
        
        private void Awake()
        {
            cursorCtrl = GetComponent<CursorController>();
            hitRectTransform = hitEffectImage.transform as RectTransform;
        }

        private void Update()
        {
            var screenDiameter = cursorCtrl.GameData.HitRadius.Value * 2f;
            hitRectTransform.sizeDelta = Vector2.one * screenDiameter;
            UpdateHitTimer();
        }

        private void UpdateHitTimer()
        {
            if (cursorCtrl.TouchingInteractables.Count == 0) return;
            hitTimer += Time.deltaTime;
            if (hitTimer >= cursorCtrl.GameData.HitRate.Value)
            {
                var hasTouchedMinableObject = false;
                foreach (var interactable in cursorCtrl.TouchingInteractables)
                {
                    hasTouchedMinableObject = true;
                    interactable.OnCursorHit(cursorCtrl);
                }

                if (hasTouchedMinableObject)
                {
                    hitTimer = 0.0f;
                }
            }
        }
    }
}