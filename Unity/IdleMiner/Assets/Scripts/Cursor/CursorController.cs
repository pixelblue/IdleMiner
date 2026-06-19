using System.Collections.Generic;
using ANS.Common.ServiceLocator;
using UnityEngine;

namespace Idler
{
    public class CursorController : MonoBehaviour, ICursor
    {
        [SerializeField] private bool showGizmos;
        [SerializeField] private Vector2 mobileOffset;
        
        public GameData GameData { get; private set; }
        public HashSet<Interactable> TouchingInteractables { get; private set; } = new();
        public Ray CursorRay => gizmoRay;
        public Vector2 ScreenPosition { get; private set; }

        private ICamera camCtrl;
        private PlayerInput playerInput;
        private RectTransform rectTransform;
        private Canvas canvas;
        private float worldHitRadius;
        private Ray gizmoRay;
        private int interactableLayer;
        private readonly List<Interactable> toRemove = new();
        private static readonly RaycastHit[] HitBuffer = new RaycastHit[32];

        private void Awake()
        {
            camCtrl       = ServiceLocator.Current.Get<ICamera>();
            GameData      = ServiceLocator.Current.Get<IGame>().Data;
            rectTransform = GetComponent<RectTransform>();
            canvas        = GetComponentInParent<Canvas>();
            interactableLayer = 1 << LayerMask.NameToLayer(Constants.Layers.Interactable);
            UpdateSize();
        }

        private void OnEnable()
        {
            playerInput = new PlayerInput();
            playerInput.Enable();
            TouchingInteractables.Clear();
        }

        private void OnDisable()
        {
            playerInput.Disable();
        }

        private void Update()
        {
            var screenPos = GetScreenPosition();
            UpdateSize();
            UpdatePosition(screenPos);
            UpdateCast();
        }
        
        private void UpdateCast()
        {
            var ray = camCtrl.Cam.ScreenPointToRay(playerInput.Player.ScreenPosition.ReadValue<Vector2>());
            gizmoRay = ray;

            int hitCount = Physics.SphereCastNonAlloc(ray, worldHitRadius, HitBuffer, float.MaxValue, interactableLayer);

            // exits — collect first to avoid modifying the set while iterating
            toRemove.Clear();
            foreach (var interactable in TouchingInteractables)
            {
                bool stillHit = false;
                for (int i = 0; i < hitCount; i++)
                    if (HitBuffer[i].collider.GetComponentInParent<Interactable>() == interactable) { stillHit = true; break; }
                if (!stillHit) toRemove.Add(interactable);
            }
            
            foreach (var interactable in toRemove)
            {
                TouchingInteractables.Remove(interactable);
                interactable.OnCursorExit(this);
            }

            // enters — HashSet.Add returns true only on first insertion
            for (int i = 0; i < hitCount; i++)
            {
                var interactable = HitBuffer[i].collider.GetComponentInParent<Interactable>();
                if (interactable != null && TouchingInteractables.Add(interactable))
                    interactable.OnCursorEnter(this);
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
            ScreenPosition = screenPos;
            rectTransform.position = new Vector3(screenPos.x, screenPos.y, rectTransform.position.z);
        }
        
        private void UpdateSize()
        {
            if (rectTransform == null || camCtrl?.Cam == null) return;
            rectTransform.sizeDelta = Vector2.one * (GameData.HitRadius.Value * 2f);
            // Convert canvas-unit radius to world-unit radius so raycasting matches the visual
            var canvasUnitsPerWorldUnit = UnityEngine.Screen.height / (2f * camCtrl.Cam.orthographicSize * canvas.scaleFactor);
            worldHitRadius = GameData.HitRadius.Value / canvasUnitsPerWorldUnit;
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

        private void OnDrawGizmos()
        {
            if (!showGizmos) return;
            if (gizmoRay.direction == Vector3.zero) return;

            // Build two axes perpendicular to the ray to place the ring of rays
            var right = Vector3.Cross(gizmoRay.direction, Vector3.up).normalized;
            if (right.sqrMagnitude < 0.001f)
                right = Vector3.Cross(gizmoRay.direction, Vector3.right).normalized;
            var up = Vector3.Cross(gizmoRay.direction, right);

            Gizmos.color = new Color(0f, 1f, 0.4f, 0.8f);
            const int rayCount = 12;
            for (int i = 0; i < rayCount; i++)
            {
                float angle = i * (360f / rayCount) * Mathf.Deg2Rad;
                var offset = (right * Mathf.Cos(angle) + up * Mathf.Sin(angle)) * worldHitRadius;
                Gizmos.DrawRay(gizmoRay.origin + offset, gizmoRay.direction * 100f);
            }
        }
    }
}
