using System;
using ANS_Core.FSM;
using ANS.Common.ServiceLocator;

namespace Idler
{
    public class State_Game_Base : FSM_GameState
    {
        protected GameManager Ctrl { get; private set; }
        protected FSM_StateManager Fsm { get; private set; }
        protected IEvent EventCtrl { get; private set; }
        
        private void Awake()
        {
            Ctrl = GetComponentInParent<GameManager>();
            Fsm = Ctrl.Fsm;
            EventCtrl = ServiceLocator.Current.Get<IEvent>();
        }

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