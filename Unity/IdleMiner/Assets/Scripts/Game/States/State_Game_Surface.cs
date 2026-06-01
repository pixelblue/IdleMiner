using ANS.Common.ServiceLocator;

namespace Idler
{
    public class State_Game_Surface : State_Game_Base
    {
        private ISurface surfaceCtrl;
        
        public override void OnActivate()
        {
            base.OnActivate();
            surfaceCtrl = ServiceLocator.Current.Get<ISurface>();
            surfaceCtrl.Activate();
        }
        
        public override void OnDeactivate()
        {
            base.OnDeactivate();
            surfaceCtrl.Deactivate();
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
            Fsm.ChangeState<State_Game_Mining>();
        }
    }
}