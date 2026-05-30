using System;
using UnityEngine;
using UnityEngine.EventSystems;

namespace GEN.InputDevice
{
    public class TouchController : MonoBehaviour, ITouch
    {
        public event Action HeldDown;
        public event Action TouchReleased;
        public event Action SwipedUp;
        public event Action SwipedDown;

        [SerializeField] private PCInputController pcInputCtrl;
        [SerializeField] private MobileInputController mobileInputCtrl;

        public bool IsThumbDown { get; private set; }
        public bool IsEnabled { get; private set; }

        private void Awake()
        {
            if (Application.isMobilePlatform)
            {
                pcInputCtrl.gameObject.SetActive(false);
                mobileInputCtrl.gameObject.SetActive(true);
            }
            else
            {
                pcInputCtrl.gameObject.SetActive(true);
                mobileInputCtrl.gameObject.SetActive(false);
            }
        }

        private void Start()
        {
            IsEnabled = true;
        }

        private void OnDisable()
        {
            IsThumbDown = false;
        }

        public void InvokeHeldDown()
        {
            if (EventSystem.current.IsPointerOverGameObject()) return;
            if (!IsEnabled) return;
            HeldDown?.Invoke();
            IsThumbDown = true;
        }

        public void InvokeTouchReleased()
        {
            if (EventSystem.current.IsPointerOverGameObject()) return;
            TouchReleased?.Invoke();
            IsThumbDown = false;
        }

        public void InvokeSwipedUp()
        {
            if (EventSystem.current.IsPointerOverGameObject()) return;
            SwipedUp?.Invoke();
        }

        public void InvokeSwipedDown()
        {
            if (EventSystem.current.IsPointerOverGameObject()) return;
            SwipedDown?.Invoke();
        }

        public void SetTouchInput(bool enable)
        {
            IsEnabled = enable;
        }
    }
}
