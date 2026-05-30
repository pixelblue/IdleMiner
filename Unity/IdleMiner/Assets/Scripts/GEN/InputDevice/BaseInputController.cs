using UnityEngine;
using UnityEngine.EventSystems;

namespace GEN.InputDevice
{
    public class BaseInputController : MonoBehaviour
    {
        protected TouchController TouchCtrl { get; private set; }
        
        private EventSystem eventSys;

        private void Awake()
        {
            eventSys = FindFirstObjectByType<EventSystem>();
            TouchCtrl = GetComponentInParent<TouchController>();
        }

        protected virtual void Update()
        {
            // don't do anything if the pointer is over a gameObject
            if (eventSys.IsPointerOverGameObject()) return;
        }
    }
}
