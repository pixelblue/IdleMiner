using System;
using ANS_Core.FSM;

namespace Idler.States
{
    public class State_Resource_Base : FSM_GameState
    {
        protected ResourceController Ctrl {get; private set;}
        protected FSM_StateManager Fsm {get; private set;}
        
        private void Awake()
        {
            Ctrl = GetComponentInParent<ResourceController>();
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