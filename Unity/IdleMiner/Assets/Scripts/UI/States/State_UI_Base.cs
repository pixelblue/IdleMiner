using ANS_Core.FSM;
using ANS.Common.ServiceLocator;
using UnityEngine;

namespace Idler
{
    public class State_UI_Base : FSM_GameState
    {
        protected FSM_StateManager Fsm { get; private set; }
        protected MainUiController Ctrl { get; private set; }
        protected IEventManager EventManagerCtrl { get; private set; }

        protected virtual void Awake()
        {
            Ctrl = GetComponentInParent<MainUiController>();
            Fsm = Ctrl.Fsm;
            EventManagerCtrl = ServiceLocator.Current.Get<IEventManager>();
            Initialize();
        }

        protected virtual void Initialize() { }

        public override void OnActivate()
        {
            RegisterEvents();
        }

        public override void OnDeactivate()
        {
            UnregisterEvents();
        }

        protected virtual void RegisterEvents()
        {
            
        }
        
        protected virtual void UnregisterEvents()
        {
            
        }
    }
}
