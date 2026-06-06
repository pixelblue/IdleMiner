using ANS.Common.ServiceLocator;
using ANS_Core.FSM;
using UnityEngine;
using UnityEngine.UI;

namespace Idler
{
    public class ResourceController : MonoBehaviour
    {
        [field: SerializeField] public FSM_StateManager Fsm { get; private set; }
        [SerializeField] private Image icon;

        public RectTransform RectTransform { get; private set; }
        public ResourceData ResourceData { get; private set; }
        public float Amount { get; private set; }
        public RectTransform DropTarget { get; private set; }

        private IResource resourceMgr;
        private IMainUI mainUI;

        private void Awake()
        {
            RectTransform = GetComponent<RectTransform>();
            resourceMgr   = ServiceLocator.Current.Get<IResource>();
            mainUI        = ServiceLocator.Current.Get<IMainUI>();
        }

        private void OnDisable()
        {
            resourceMgr.Unregister(this);
        }

        public void Initialize(ResourceData data, float amount)
        {
            ResourceData = data;
            Amount       = amount;
            icon.sprite  = data.icon;

            transform.SetParent(mainUI.ResourceContainer, true);
            RectTransform.position = new Vector3(mainUI.CursorCtrl.ScreenPosition.x, mainUI.CursorCtrl.ScreenPosition.y, 0f);

            resourceMgr.Register(this);
            mainUI.CursorCtrl.cursorResourceCtrl.AddResource(this);
            Fsm.ChangeState<State_Resource_FollowCursor>();
        }

        public void StartDrop(RectTransform target)
        {
            DropTarget = target;
            Fsm.ChangeState<State_Resource_Drop>();
        }
    }
}
