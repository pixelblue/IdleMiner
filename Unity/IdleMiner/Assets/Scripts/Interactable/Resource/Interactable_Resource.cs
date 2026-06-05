using ANS_Core.FSM;
using ANS.Common.ServiceLocator;
using UnityEngine;
using UnityEngine.UI;

namespace Idler
{
    public class Interactable_Resource : Interactable
    {
        [field: SerializeField] public FSM_StateManager Fsm { get; private set; }

        public ResourceData ResourceData { get; private set; }
        public float Amount { get; private set; }
        public Transform OrbitTransform { get; private set; }
        public bool IsCollectable { get; private set; }
        public UnityEngine.RectTransform DropTarget { get; private set; }
        
        private IResource resourceMgr;
        private IMainUI mainUI;

        protected override void Awake()
        {
            base.Awake();
            resourceMgr = ServiceLocator.Current.Get<IResource>();
            mainUI      = ServiceLocator.Current.Get<IMainUI>();
        }

        public void Initialize(ResourceData data, float amount, Transform orbitTransform)
        {
            ResourceData  = data;
            Amount        = amount;
            OrbitTransform = orbitTransform;

            var interactableUI = SpawnUIElement();
            interactableUI.SetSprite(data.icon);
            
            resourceMgr.Register(this);
            FollowCursor();
        }

        public void SetIsCollectable(bool isCollectable)
        {
            IsCollectable = isCollectable;
        }

        public void StartDrop(UnityEngine.RectTransform target)
        {
            DropTarget = target;
            Fsm.ChangeState<State_Resource_Drop>();
        }

        private void FollowCursor()
        {
            SetIsCollectable(false);
            mainUI.CursorCtrl.cursorResourceCtrl.AddResource(this);
            Fsm.ChangeState<State_Resource_FollowCursor>();
        }
        
        public override void OnCursorEnter(CursorController cursor)
        {
            if (IsCollectable)
            {
                FollowCursor();
            }
        }

        public override void OnCursorExit(CursorController cursor)
        {
            
        }

        public override void OnCursorHit(CursorController cursor)
        {
            
        }
    }
}