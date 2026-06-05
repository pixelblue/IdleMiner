using System;
using ANS_Core.FSM;
using ANS.Common;
using ANS.Common.ServiceLocator;

namespace Idler
{
    public class State_Resource_Base : FSM_GameState
    {
        protected Interactable_Resource Ctrl {get; private set;}
        protected FSM_StateManager Fsm {get; private set;}
        protected IPool PoolCtrl {get; private set;}
        
        private void Awake()
        {
            Ctrl = GetComponentInParent<Interactable_Resource>();
            PoolCtrl = ServiceLocator.Current.Get<IPool>();
            Fsm = Ctrl.Fsm;
        }

        public override void OnActivate()
        {
            
        }

        public override void OnDeactivate()
        {
            
        }
    }
}