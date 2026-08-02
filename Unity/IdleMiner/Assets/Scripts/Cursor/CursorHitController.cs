using System;
using ANS.Common.ServiceLocator;
using UnityEngine;

namespace Idler
{
    public class CursorHitController : MonoBehaviour
    {
        private CursorController cursorCtrl;
        private float hitTimer;

        private void Awake()
        {
            cursorCtrl = GetComponent<CursorController>();
        }

        private void Update()
        {
            if (cursorCtrl.GlobalPropertyStats == null) return;
            UpdateHitTimer();
        }

        private void UpdateHitTimer()
        {
            if (cursorCtrl.TouchingInteractables.Count == 0) return;
            hitTimer += Time.deltaTime;
            if (hitTimer >= cursorCtrl.GlobalPropertyStats.HitRate.Value)
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