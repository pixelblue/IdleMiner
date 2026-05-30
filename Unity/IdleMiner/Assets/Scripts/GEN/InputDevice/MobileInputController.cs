using UnityEngine;

namespace GEN.InputDevice
{
    public class MobileInputController : BaseInputController
    {
        private const float SwipeTolerance = 10.0f;

        [SerializeField] private bool canSwipe;
        
        private Vector2 swipeStartPos;
        private Vector2 currentSwipeDir;
        private int lastFingerId = -1;
        
        protected override void Update()
        {
            base.Update();
            
            UpdateTouchInput();
        }

        /// <summary>
        /// Upate the input from mobile
        /// </summary>
        private void UpdateTouchInput()
        {
            if (Input.touchCount == 0)
            {
                if (TouchCtrl.IsThumbDown)
                {
                    TouchCtrl.InvokeTouchReleased();
                }
                return;
            }
            
            foreach (Touch touch in Input.touches)
            {
                if(touch.fingerId >= Input.touchCount) continue;
                
                switch (touch.phase)
                {
                    case TouchPhase.Began:
                        lastFingerId = touch.fingerId;
                        OnBeginDrag(Input.GetTouch(lastFingerId).position);
                        break;
                    case TouchPhase.Ended:
                        if (touch.fingerId == lastFingerId)
                        {
                            OnReleaseDrag(Input.GetTouch(lastFingerId).position);
                        }
                        break;
                }
            }
            
            /*
            // finger is down
            if (Input.GetTouch(0).phase == TouchPhase.Began)
            {
                OnBeginDrag(Input.GetTouch(0).position);
            }

            // finger is released
            if (Input.GetTouch(0).phase == TouchPhase.Ended ||
                Input.GetTouch(0).phase == TouchPhase.Canceled)
            {
                OnReleaseDrag(Input.GetTouch(0).position);
            }
            */
        }
        
        private void OnBeginDrag(Vector2 inputPos)
        {
            swipeStartPos = inputPos;
            TouchCtrl.InvokeHeldDown();
        }
        
        private void OnReleaseDrag(Vector2 inputPos)
        {
            currentSwipeDir = inputPos - swipeStartPos;
            if (currentSwipeDir.magnitude > SwipeTolerance && canSwipe)
            {
                CallSwipe(currentSwipeDir);
            }
            else
            {
                TouchCtrl.InvokeTouchReleased();
            }
        }

        private void CallSwipe(Vector2 swipeDir)
        {
            float angle = Vector3.Angle(swipeDir.normalized, Vector3.up);
            Vector3 cross = Vector3.Cross(swipeDir, Vector3.up);

            if (cross.z < 0)
                angle = -angle;


            //SWIPE UP
            if (Mathf.Abs(angle) <= 55.0f)
            {
                TouchCtrl.InvokeSwipedUp();
            }
            
            //SWIPE DOWN
            if (Mathf.Abs(angle) > 145.0f)
            {
                TouchCtrl.InvokeSwipedDown();
            }
        }
    }
}
