using DG.Tweening;

namespace Idler.States
{
    public class State_Camera_Building : State_Camera_Base
    {
        public override void OnActivate()
        {
            base.OnActivate();
            Ctrl.Cam.DOOrthoSize(Ctrl.orthoSizeBuilding, 0.3f);
        }

        public override void OnDeactivate()
        {
            base.OnDeactivate();
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
            Fsm.ChangeState<State_Camera_Mining>();
        }
    }
}