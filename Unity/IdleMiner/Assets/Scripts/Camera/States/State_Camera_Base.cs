using System;
using ANS_Core.FSM;
using ANS.Common.ServiceLocator;

namespace Idler.States
{
    public class State_Camera_Base : FSM_GameState
    {
        public CameraController Ctrl { get; private set; }
        public FSM_StateManager Fsm { get; private set; }
        public IEventManager EventCtrl { get; private set; }
        public IObjectives ObjectivesCtrl { get; private set; }
        
        protected virtual void Awake()
        {
            Ctrl = GetComponentInParent<CameraController>();
            Fsm = Ctrl.Fsm;
            EventCtrl = ServiceLocator.Current.Get<IEventManager>();
            ObjectivesCtrl = ServiceLocator.Current.Get<IObjectives>();
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