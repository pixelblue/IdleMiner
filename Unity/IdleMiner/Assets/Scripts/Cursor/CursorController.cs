using System.Collections.Generic;
using ANS.Common.ServiceLocator;
using DG.Tweening;
using UnityEngine;
using UnityEngine.UI;

namespace Idler
{
    public class CursorController : MonoBehaviour, ICursor
    {
        [SerializeField] private Vector2 mobileOffset;
        [SerializeField] private LeveledProperty hitRadius;
        [SerializeField] private LeveledProperty hitRate;
        [SerializeField] private float castDepth = 5f;
        [SerializeField] private LayerMask castMask = ~0;
        [SerializeField] private Image hitEffectImage;

        private ICamera camCtrl;
        private IEvent eventCtrl;
        private IMining miningCtrl;
        private PlayerInput playerInput;
        private RectTransform rectTransform;
        private RectTransform hitRectTransform;
        private Canvas canvas;
        private readonly HashSet<Collider> currentHits = new();
        private readonly List<Collider> toRemove = new();
        private readonly RaycastHit[] hitBuffer = new RaycastHit[16];
        private float hitTimer;
        private Ray gizmoRay;

        private void Awake()
        {
            camCtrl     = ServiceLocator.Current.Get<ICamera>();
            eventCtrl   = ServiceLocator.Current.Get<IEvent>();
            miningCtrl  = ServiceLocator.Current.Get<IMining>();
            rectTransform = GetComponent<RectTransform>();
            hitRectTransform = hitEffectImage.transform as RectTransform;
            canvas = GetComponentInParent<Canvas>();
            UpdateSize();
        }

        private void OnEnable()
        {
            playerInput = new PlayerInput();
            playerInput.Enable();
            hitTimer = 0f;
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
            UpdateHitTick();
        }

        private void UpdateHitTick()
        {
            hitTimer += Time.deltaTime;
            if (hitTimer > hitRate.Value)
            {
                if (currentHits.Count == 0) return;
                if (!miningCtrl.ConsumeHit()) return; // no energy — skip tick
                hitTimer = 0f;

                transform.DOKill();
                transform.localScale = Vector3.one * 0.9f;
                transform.DOScale(Vector3.one, 0.1f);
                hitEffectImage.DOKill();
                hitEffectImage.color = new Color(hitEffectImage.color.r, hitEffectImage.color.g, hitEffectImage.color.b,
                    1.0f);
                hitEffectImage.DOFade(0.0f, 0.1f);
                hitEffectImage.transform.DOKill();
                hitEffectImage.transform.localScale = Vector3.one;
                hitEffectImage.transform.DOScale(Vector3.one * 1.5f, 0.1f);
                foreach (var col in currentHits)
                    if (col.TryGetComponent<Interactable>(out var interactable))
                        interactable.OnCursorHit(this);
            }
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
            var ray = camCtrl.Cam.ScreenPointToRay(screenPos);
            gizmoRay = ray;
            var count = Physics.SphereCastNonAlloc(ray, hitRadius.Value, hitBuffer, castDepth, castMask);

            toRemove.Clear();
            foreach (var col in currentHits)
            {
                var stillHit = false;
                for (var i = 0; i < count; i++)
                    if (hitBuffer[i].collider == col) { stillHit = true; break; }
                if (!stillHit) toRemove.Add(col);
            }
            foreach (var col in toRemove)
            {
                currentHits.Remove(col);
                OnColliderExit(col);
            }

            for (var i = 0; i < count; i++)
            {
                if (currentHits.Add(hitBuffer[i].collider))
                    OnColliderEnter(hitBuffer[i].collider);
            }
        }

        private void UpdateSize()
        {
            if (rectTransform == null || camCtrl?.Cam == null) return;
            var pixelsPerUnit = UnityEngine.Screen.height / (2f * camCtrl.Cam.orthographicSize * canvas.scaleFactor);
            var value = Vector2.one * (hitRadius.Value * 2f * pixelsPerUnit);
            rectTransform.sizeDelta = value;
            hitRectTransform.sizeDelta = value;
        }

        private void OnDrawGizmos()
        {
            var radius = hitRadius != null ? hitRadius.Value : 0.5f;
            Gizmos.color = currentHits.Count > 0 ? Color.green : Color.cyan;
            var end = gizmoRay.origin + gizmoRay.direction * castDepth;
            Gizmos.DrawWireSphere(gizmoRay.origin, radius);
            Gizmos.DrawWireSphere(end, radius);
            Gizmos.DrawLine(gizmoRay.origin, end);
        }

        protected virtual void OnColliderEnter(Collider col)
        {
            if (col.TryGetComponent<Interactable>(out var interactable))
                interactable.OnCursorEnter(this);
        }

        protected virtual void OnColliderExit(Collider col)
        {
            if (col.TryGetComponent<Interactable>(out var interactable))
                interactable.OnCursorExit(this);
        }

        public void Activate()
        {
            Cursor.visible = false;
            this.gameObject.SetActive(true);
        }

        public void Deactivate()
        {
            Cursor.visible = true;
            this.gameObject.SetActive(false);
        }
    }
}