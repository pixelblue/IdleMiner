using System;
using UnityEngine;
using UnityEngine.UI;

namespace Idler
{
    [RequireComponent(typeof(Image))]
    public class ImageEvents : MonoBehaviour
    {
        public event Action PointerEntered;
        public event Action PointerExited;

        private RectTransform rectTransform;
        private bool isInside;
        private PlayerInput playerInput;

        private void Awake()
        {
            rectTransform = GetComponent<RectTransform>();
        }

        private void OnEnable()
        {
            playerInput = new PlayerInput();
            playerInput.Enable();
        }

        private void OnDisable()
        {
            playerInput.Disable();
            // reset so re-enable doesn't skip the enter event
            isInside = false;
        }

        private void Update()
        {
            bool nowInside = RectTransformUtility.RectangleContainsScreenPoint(rectTransform, playerInput.Player.ScreenPosition.ReadValue<Vector2>(), null);

            if (nowInside && !isInside)
            {
                isInside = true;
                PointerEntered?.Invoke();
            }
            else if (!nowInside && isInside)
            {
                isInside = false;
                PointerExited?.Invoke();
            }
        }
    }
}