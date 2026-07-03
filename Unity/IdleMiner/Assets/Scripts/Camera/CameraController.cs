using ANS_Core.FSM;
using DG.Tweening;
using Unity.Cinemachine;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.InputSystem;

namespace Idler
{
    public class CameraController : MonoBehaviour, ICamera
    {
        [field: SerializeField] public FSM_StateManager Fsm { get; set; }
        [field: SerializeField] public Camera Cam { get; private set; }
        [SerializeField] private Transform dragHandle;
        [SerializeField] private float zoomSpeed = 0.05f;
        [SerializeField] private float minZoom = 2f;
        [SerializeField] private float maxZoom = 20f;
        [SerializeField] private float dragSensitivity = 1f;
        [SerializeField] private CinemachineFollow followCtrl;
        [SerializeField] private float inertiaDamping = 5f;
        [field: SerializeField] public CameraPosition[] CameraPositions { get; private set; }
        [field: SerializeField] public CameraPosition FinalCameraPosition { get; private set; }

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
        
        public void HandleDrag(bool overUI)
        {
            var screenPos = playerInput.Player.ScreenPosition.ReadValue<Vector2>();
            bool pressing = playerInput.Player.Touch.IsPressed();
            bool dragging = pressing && !overUI;

            if (dragging && wasDragging)
            {
                var screenDelta = screenPos - previousScreenPos;
                float dist = Mathf.Abs(Cam.transform.localPosition.z);
                float pixelsToWorld = 2f * Mathf.Tan(Cam.fieldOfView * 0.5f * Mathf.Deg2Rad) * dist / UnityEngine.Screen.height;

                // Project camera axes onto XZ so drag feels 1:1 with screen space at any angle
                var right   = Cam.transform.right;   right.y   = 0f; right.Normalize();
                var forward = Cam.transform.up;       forward.y = 0f; forward.Normalize();
                var worldDelta = (-right * screenDelta.x - forward * screenDelta.y) * pixelsToWorld * dragSensitivity;

                dragHandle.position += worldDelta;
                // smooth velocity to avoid spikes from single fast frames
                dragVelocity = Vector3.Lerp(dragVelocity, worldDelta / Time.deltaTime, 15f * Time.deltaTime);
            }
            else if (!pressing)
            {
                // coast with inertia and exponentially decay to zero
                dragHandle.position += dragVelocity * Time.deltaTime;
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

        public void HandleZoom(bool overUI)
        {
            if (overUI) return;
            float scroll = Mouse.current?.scroll.ReadValue().y ?? 0f;
            if (scroll == 0f) return;
            followCtrl.FollowOffset = new Vector3(
                followCtrl.FollowOffset.x, 
                Mathf.Clamp(followCtrl.FollowOffset.y + (-scroll * zoomSpeed), minZoom, maxZoom),
                followCtrl.FollowOffset.z);
        }

        public void SetCameraPosition(CameraPosition cameraPosition, bool instant = false)
        {
            /*
            if (instant)
            {
                dragHandle.position = new Vector3(cameraPosition.position.x, cameraPosition.position.z, dragHandle.position.z);
                var lp = Cam.transform.localPosition;
                lp.z = cameraPosition.position.z;
                Cam.transform.localPosition = lp;
            }
            else
            {
                dragHandle.DOMove(cameraPosition.position, 0.5f).SetEase(Ease.InOutSine);
                Cam.transform.DOLocalMoveZ(cameraPosition.position.z, 0.5f).SetEase(Ease.InOutSine);
            }
            */
        }
    }
}