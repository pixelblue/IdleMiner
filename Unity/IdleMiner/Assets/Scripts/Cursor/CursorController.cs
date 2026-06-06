using System.Collections.Generic;
using ANS.Common.ServiceLocator;
using UnityEngine;

namespace Idler
{
    public class CursorController : MonoBehaviour, ICursor
    {
        [SerializeField] private Vector2 mobileOffset;
        [field: SerializeField] public CursorResourceController cursorResourceCtrl;
        
        public IMap MapCtrl { get; private set; }
        public GameData GameData { get; private set; }
        public HashSet<Interactable> TouchingInteractables { get; private set; } = new();
        public Ray CursorRay => gizmoRay;
        public Vector2 ScreenPosition { get; private set; }
        
        private ICamera camCtrl;
        private IEvent eventCtrl;
        private PlayerInput playerInput;
        private RectTransform rectTransform;
        private Canvas canvas;
        private float worldHitRadius;
        private Ray gizmoRay;
        private readonly List<Interactable> toRemove = new();

        private void Awake()
        {
            camCtrl    = ServiceLocator.Current.Get<ICamera>();
            eventCtrl  = ServiceLocator.Current.Get<IEvent>();
            GameData   = ServiceLocator.Current.Get<IGame>().Data;
            MapCtrl    = ServiceLocator.Current.Get<IMap>();
            rectTransform    = GetComponent<RectTransform>();
            canvas           = GetComponentInParent<Canvas>();
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

            // exits — collect first to avoid modifying the set while iterating
            toRemove.Clear();
            foreach (var interactable in TouchingInteractables)
                if (!interactable.IntersectsRay(ray, worldHitRadius))
                    toRemove.Add(interactable);
            foreach (var interactable in toRemove)
            {
                TouchingInteractables.Remove(interactable);
                interactable.OnCursorExit(this);
            }

            // enters — HashSet.Add returns true only on first insertion
            foreach (var interactable in MapCtrl.AllInteractables)
                if (interactable.IntersectsRay(ray, worldHitRadius) && TouchingInteractables.Add(interactable))
                    interactable.OnCursorEnter(this);
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
    }
}
