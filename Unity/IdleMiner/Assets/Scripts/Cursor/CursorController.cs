using System.Collections.Generic;
using ANS.Common.ServiceLocator;
using UnityEngine;

namespace Idler
{
    public class CursorController : MonoBehaviour
    {
        [SerializeField] private Vector2 mobileOffset;
        [SerializeField] private LeveledProperty hitRadius;
        [SerializeField] private float castDepth = 5f;
        [SerializeField] private LayerMask castMask = ~0;

        private ICamera camCtrl;
        private PlayerInput playerInput;
        private RectTransform rectTransform;
        private readonly HashSet<Collider> currentHits = new();
        private readonly List<Collider> toRemove = new();
        private readonly Collider[] hitBuffer = new Collider[16];

        private void Awake()
        {
            Cursor.visible = false;
            camCtrl = ServiceLocator.Current.Get<ICamera>();
            rectTransform = GetComponent<RectTransform>();
            UpdateSize();
        }

        private void OnEnable()
        {
            playerInput = new PlayerInput();
            playerInput.Enable();
        }

        private void OnDisable()
        {
            playerInput.Disable();
            foreach (var col in currentHits)
                OnColliderExit(col);
            currentHits.Clear();
        }

        private void Update()
        {
            var screenPos = GetScreenPosition();
            UpdateSize();
            UpdatePosition(screenPos);
            UpdateCast(screenPos);
        }

        private Vector2 GetScreenPosition()
        {
            var screenPos = playerInput.Player.ScreenPosition.ReadValue<Vector2>();
            if (Application.isMobilePlatform)
                screenPos += mobileOffset;
            return screenPos;
        }

        private void UpdatePosition(Vector2 screenPos)
        {
            rectTransform.position = new Vector3(screenPos.x, screenPos.y, rectTransform.position.z);
        }

        private void UpdateCast(Vector2 screenPos)
        {
            var cam = camCtrl.Cam;
            var worldPos = cam.ScreenToWorldPoint(new Vector3(screenPos.x, screenPos.y, Mathf.Abs(cam.transform.position.z)));
            worldPos.z = 0f;

            var p1 = worldPos;
            var p2 = worldPos + cam.transform.forward * castDepth;
            var count = Physics.OverlapCapsuleNonAlloc(p1, p2, hitRadius.Value, hitBuffer, castMask);

            toRemove.Clear();
            foreach (var col in currentHits)
            {
                var stillHit = false;
                for (var i = 0; i < count; i++)
                    if (hitBuffer[i] == col) { stillHit = true; break; }
                if (!stillHit) toRemove.Add(col);
            }
            foreach (var col in toRemove)
            {
                currentHits.Remove(col);
                OnColliderExit(col);
            }

            for (var i = 0; i < count; i++)
            {
                if (currentHits.Add(hitBuffer[i]))
                    OnColliderEnter(hitBuffer[i]);
            }
        }

        private void UpdateSize()
        {
            if (rectTransform == null) return;
            rectTransform.sizeDelta = Vector2.one * hitRadius.Value * 2f * 100.0f;
        }

        protected virtual void OnColliderEnter(Collider col) { }
        protected virtual void OnColliderExit(Collider col) { }
    }
}