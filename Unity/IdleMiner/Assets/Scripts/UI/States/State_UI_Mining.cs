namespace Idler
{
    public class State_UI_Mining : State_UI_Base
    {
        public override void OnActivate()
        {
            base.OnActivate();
            Ctrl.ShowScreen(Ctrl.Screen_Mining);
        }

        public override void OnDeactivate()
        {
            base.OnDeactivate();
            Ctrl.Screen_Mining.Hide();
        }

        protected override void RegisterEvents()
        {
            base.RegisterEvents();
            EventCtrl.MiningStopped += OnMiningStopped;
        }

        protected override void UnregisterEvents()
        {
            base.UnregisterEvents();
            EventCtrl.MiningStopped -= OnMiningStopped;
        }

        private void OnMiningStopped()
        {
            Fsm.ChangeState<State_UI_Surface>();
        }
    }
}