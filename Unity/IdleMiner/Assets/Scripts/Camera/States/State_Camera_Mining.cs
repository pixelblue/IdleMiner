using DG.Tweening;

namespace Idler.States
{
    public class State_Camera_Mining : State_Camera_Base
    {
        public override void OnActivate()
        {
            base.OnActivate();
            Ctrl.Cam.DOOrthoSize(Ctrl.orthoSizeMining, 0.3f);
        }
        
        public override void OnDeactivate()
        {
            base.OnDeactivate();
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
            Fsm.ChangeState<State_Camera_Building>();
        }
    }
}