using UnityEngine;

namespace GEN.InputDevice
{
    public class PCInputController : BaseInputController
    {
        protected override void Update()
        {
            base.Update();
            UpdateKeyboardInput();
        }
        
        /// <summary>
        /// Update the input from the keyboard. Mainly for convinience purposes
        /// </summary>
        private void UpdateKeyboardInput()
        {
            if (Input.GetMouseButton(0))
            {
                TouchCtrl.InvokeHeldDown();
            }

            if (Input.GetMouseButtonUp(0))
            {
                TouchCtrl.InvokeTouchReleased();    
            }
            
            if (Input.GetKeyDown(KeyCode.Space))
            {
                TouchCtrl.InvokeHeldDown();
            }

            if (Input.GetKeyUp(KeyCode.Space))
            {
                TouchCtrl.InvokeTouchReleased();
            }
        }
    }
}
