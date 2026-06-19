using ANS_Core.FSM;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.InputSystem;

namespace Idler
{
    public class CameraController : MonoBehaviour, ICamera
    {
        [field: SerializeField] public FSM_StateManager Fsm { get; set; }
        [field: SerializeField] public Camera Cam { get; private set; }
        [SerializeField] private float zoomSpeed = 0.05f;
        [SerializeField] private float minZoom = 2f;
        [SerializeField] private float maxZoom = 20f;
        [SerializeField] private float inertiaDamping = 5f;

        private PlayerInput playerInput;
        private Vector2 previousScreenPos;
        private Vector3 dragVelocity;
        private bool wasDragging;

        public void Initialize()
        {
            Fsm.enabled = true;
        }

        private void OnEnable()
        {
            playerInput = new PlayerInput();
            playerInput.Enable();
        }

        private void OnDisable()
        {
            playerInput.Disable();
        }

        private void Update()
        {
            bool overUI = EventSystem.current != null && EventSystem.current.IsPointerOverGameObject();
            HandleDrag(overUI);
            HandleZoom(overUI);
        }

        private void HandleDrag(bool overUI)
        {
            var screenPos = playerInput.Player.ScreenPosition.ReadValue<Vector2>();
            bool pressing = playerInput.Player.Touch.IsPressed();
            bool dragging = pressing && !overUI;

            if (dragging && wasDragging)
            {
                var screenDelta = screenPos - previousScreenPos;
                float pixelsToWorld = Cam.orthographicSize * 2f / UnityEngine.Screen.height;

                // Project camera axes onto XZ so drag feels 1:1 with screen space at any angle
                var right   = Cam.transform.right;   right.y   = 0f; right.Normalize();
                var forward = Cam.transform.up;       forward.y = 0f; forward.Normalize();
                var worldDelta = (-right * screenDelta.x - forward * screenDelta.y) * pixelsToWorld;

                Cam.transform.position += worldDelta;
                // smooth velocity to avoid spikes from single fast frames
                dragVelocity = Vector3.Lerp(dragVelocity, worldDelta / Time.deltaTime, 15f * Time.deltaTime);
            }
            else if (!pressing)
            {
                // coast with inertia and exponentially decay to zero
                Cam.transform.position += dragVelocity * Time.deltaTime;
                dragVelocity = Vector3.Lerp(dragVelocity, Vector3.zero, inertiaDamping * Time.deltaTime);
                if (dragVelocity.sqrMagnitude < 0.0001f) dragVelocity = Vector3.zero;
            }
            else if (!dragging)
            {
                // pressing but over UI — kill inertia so it doesn't drift on release
                dragVelocity = Vector3.zero;
            }

            previousScreenPos = screenPos;
            wasDragging = dragging;
        }

        private void HandleZoom(bool overUI)
        {
            if (overUI) return;
            float scroll = Mouse.current?.scroll.ReadValue().y ?? 0f;
            if (scroll == 0f) return;
            Cam.orthographicSize = Mathf.Clamp(Cam.orthographicSize - scroll * zoomSpeed, minZoom, maxZoom);
        }
    }
}