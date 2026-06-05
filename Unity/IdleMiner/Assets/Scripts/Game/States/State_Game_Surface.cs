using ANS.Common.ServiceLocator;

namespace Idler
{
    public class State_Game_Surface : State_Game_Base
    {
        private IMap mapCtrl;
        
        public override void OnActivate()
        {
            base.OnActivate();
            mapCtrl = ServiceLocator.Current.Get<IMap>();
            mapCtrl.SurfaceCtrl.Activate();
        }
        
        public override void OnDeactivate()
        {
            base.OnDeactivate();
            mapCtrl.SurfaceCtrl.Deactivate();
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