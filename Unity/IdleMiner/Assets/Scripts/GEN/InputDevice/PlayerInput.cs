using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.InputSystem;

namespace GEN.InputDevice
{
    public class PlayerInput : MonoBehaviour
    {
        public Vector2 ScreenPosition { get; private set; }
        public bool IsPressed { get; private set; }

        private bool isMobile;

        private void Awake()
        {
            isMobile = Application.isMobilePlatform;
        }

        private void Update()
        {
            if (isMobile)
            {
                var touch = Touchscreen.current;
                if (touch != null && touch.primaryTouch.press.isPressed)
                {
                    ScreenPosition = touch.primaryTouch.position.ReadValue();
                    IsPressed = !IsOverUI();
                }
                else
                {
                    IsPressed = false;
                }
            }
            else
            {
                var mouse = Mouse.current;
                if (mouse == null) return;
                ScreenPosition = mouse.position.ReadValue();
                IsPressed = mouse.leftButton.isPressed && !IsOverUI();
            }
        }

        private static bool IsOverUI() =>
            EventSystem.current != null && EventSystem.current.IsPointerOverGameObject();
    }
}
