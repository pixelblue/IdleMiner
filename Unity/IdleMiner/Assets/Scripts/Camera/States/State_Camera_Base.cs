using System;
using ANS_Core.FSM;
using ANS.Common.ServiceLocator;

namespace Idler.States
{
    public class State_Camera_Base : FSM_GameState
    {
        public CameraController Ctrl { get; private set; }
        public FSM_StateManager Fsm { get; private set; }
        public IEventManager EventManagerCtrl { get; private set; }
        
        protected virtual void Awake()
        {
            Ctrl = GetComponentInParent<CameraController>();
            Fsm = Ctrl.Fsm;
            EventManagerCtrl = ServiceLocator.Current.Get<IEventManager>();
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