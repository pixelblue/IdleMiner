using System;
using ANS_Core.FSM;

namespace Idler.States
{
    public class State_DroneSpawner_Base : FSM_GameState
    {
        protected Interactable_BuildingDroneSpawner Ctrl { get; private set; }
        protected FSM_StateManager Fsm { get; private set; }

        private void Awake()
        {
            Ctrl = GetComponentInParent<Interactable_BuildingDroneSpawner>();
            Fsm = Ctrl.Fsm;
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