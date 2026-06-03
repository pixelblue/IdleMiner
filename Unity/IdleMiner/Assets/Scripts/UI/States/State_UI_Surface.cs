namespace Idler
{
    public class State_UI_Surface : State_UI_Base
    {
        public override void OnActivate()
        {
            base.OnActivate();
            Ctrl.ShowScreen(Ctrl.Screen_Surface);
        }
        
        public override void OnDeactivate()
        {
            base.OnDeactivate();
            Ctrl.Screen_Surface.Hide();
        }

        protected override void RegisterEvents()
        {
            base.RegisterEvents();
            EventCtrl.MiningStarted += OnMiningStarted;
        }

        protected override void UnregisterEvents()
        {
            base.UnregisterEvents();
            EventCtrl.MiningStarted -= OnMiningStarted;
        }

        private void OnMiningStarted()
        {
            Fsm.ChangeState<State_UI_Mining>();
        }
    }
}