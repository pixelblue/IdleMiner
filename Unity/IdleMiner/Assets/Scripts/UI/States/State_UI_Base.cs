using ANS_Core.FSM;
using UnityEngine;

namespace Idler
{
    public class State_UI_Base : FSM_GameState
    {
        protected FSM_StateManager Fsm { get; private set; }
        protected MainUiController Ctrl { get; private set; }

        protected virtual void Awake()
        {
            Ctrl = GetComponentInParent<MainUiController>();
            Fsm = Ctrl.Fsm;
            Initialize();
        }

        protected virtual void Initialize() { }

        public override void OnActivate() { }

        public override void OnDeactivate() { }
    }
}
