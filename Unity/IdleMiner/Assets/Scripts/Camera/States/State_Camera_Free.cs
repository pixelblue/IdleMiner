using UnityEngine.EventSystems;

namespace Idler.States
{
    public class State_Camera_Free : State_Camera_Base
    {
        public override void OnActivate()
        {
            base.OnActivate();
        }

        public override void OnDeactivate()
        {
            base.OnDeactivate();
        }
        
        private void Update()
        {
            bool overUI = EventSystem.current != null && EventSystem.current.IsPointerOverGameObject();
            Ctrl.HandleDrag(overUI);
            Ctrl.HandleZoom(overUI);
        }
        
        
    }
}