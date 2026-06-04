using ANS_Core.FSM;
using ANS.Common.ServiceLocator;
using Idler.States;
using UnityEngine;
using UnityEngine.UI;

namespace Idler
{
    public class ResourceController : MonoBehaviour
    {
        [field: SerializeField] public FSM_StateManager Fsm { get; private set; }

        public ResourceData ResourceData { get; private set; }
        public float Amount { get; private set; }
        public Transform OrbitTransform { get; private set; }

        private Image uiImage;
        private ICamera camCtrl;
        private IResource resourceMgr;

        private void Awake()
        {
            camCtrl     = ServiceLocator.Current.Get<ICamera>();
            resourceMgr = ServiceLocator.Current.Get<IResource>();
        }

        private void LateUpdate()
        {
            if (uiImage == null) return;
            var screenPos = camCtrl.Cam.WorldToScreenPoint(transform.position);
            screenPos.z = 0f;
            uiImage.rectTransform.position = screenPos;
        }

        public void Initialize(ResourceData data, float amount, Transform orbitTransform)
        {
            ResourceData  = data;
            Amount        = amount;
            OrbitTransform = orbitTransform;

            uiImage = ((ResourceManager)resourceMgr).SpawnUIElement(data.icon);
            Fsm.ChangeState<State_Resource_OrbitObject>();
        }

        public void Release()
        {
            if (uiImage != null)
            {
                Destroy(uiImage.gameObject);
                uiImage = null;
            }
        }

        public void AddAmount(float amount) => Amount += amount;
    }
}
