using System.Collections.Generic;
using ANS.Common.ServiceLocator;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

namespace Idler
{
    public class CursorController : MonoBehaviour, ICursor
    {
        [SerializeField] private bool showGizmos;
        [SerializeField] private Vector2 mobileOffset;
        [SerializeField] private Image image;
        
        public GlobalPropertyStats GlobalPropertyStats { get; private set; }
        public HashSet<Interactable> TouchingInteractables { get; private set; } = new();
        public Ray CursorRay => gizmoRay;
        public Vector2 ScreenPosition { get; private set; }

        private ICamera camCtrl;
        private PlayerInput playerInput;
        private RectTransform rectTransform;
        private Ray gizmoRay;
        private int interactableLayer;
        private readonly List<Interactable> toRemove = new();
        private static readonly RaycastHit[] HitBuffer = new RaycastHit[32];
        private PointerEventData uiPointerData;
        private readonly List<RaycastResult> uiRaycastResults = new();

        private void Awake()
        {
            camCtrl       = ServiceLocator.Current.Get<ICamera>();
            rectTransform = GetComponent<RectTransform>();
            interactableLayer = 1 << LayerMask.NameToLayer(Constants.Layers.Interactable);
            uiPointerData = new PointerEventData(EventSystem.current);
        }

        private void OnEnable()
        {
            playerInput = new PlayerInput();
            playerInput.Player.Touch.started  += OnTouchStarted;
            playerInput.Player.Touch.canceled += OnTouchCanceled;
            playerInput.Enable();
            TouchingInteractables.Clear();
        }

        private void OnDisable()
        {
            playerInput.Player.Touch.started  -= OnTouchStarted;
            playerInput.Player.Touch.canceled -= OnTouchCanceled;
            playerInput.Disable();
        }

        public void Initialize()
        {
            GlobalPropertyStats     = ServiceLocator.Current.Get<IGame>().GlobalPropertyStats;
        }

        private void Update()
        {
            var screenPos = GetScreenPosition();
            UpdatePosition(screenPos);
            UpdateCast();
            UpdateImageVisibility(screenPos);
        }

        private void UpdateCast()
        {
            var ray = camCtrl.Cam.ScreenPointToRay(playerInput.Player.ScreenPosition.ReadValue<Vector2>());
            gizmoRay = ray;

            int hitCount = Physics.RaycastNonAlloc(ray, HitBuffer, float.MaxValue, interactableLayer);

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
        
        private void UpdateImageVisibility(Vector2 screenPos)
        {
            uiPointerData.position = screenPos;
            uiRaycastResults.Clear();
            EventSystem.current.RaycastAll(uiPointerData, uiRaycastResults);

            bool overOtherUI = false;
            foreach (var result in uiRaycastResults)
            {
                if (!result.gameObject.transform.IsChildOf(transform))
                {
                    overOtherUI = true;
                    break;
                }
            }

            image.enabled = !overOtherUI;
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

        private void OnTouchStarted(UnityEngine.InputSystem.InputAction.CallbackContext ctx)
        {
            foreach (var interactable in TouchingInteractables)
                interactable.OnCursorPressed(this);
        }

        private void OnTouchCanceled(UnityEngine.InputSystem.InputAction.CallbackContext ctx)
        {
            foreach (var interactable in TouchingInteractables)
                interactable.OnCursorReleased(this);
        }

        private void OnDrawGizmos()
        {
            if (!showGizmos) return;
            if (gizmoRay.direction == Vector3.zero) return;

            Gizmos.color = new Color(0f, 1f, 0.4f, 0.8f);
            Gizmos.DrawRay(gizmoRay.origin, gizmoRay.direction * 100f);
        }
    }
}
