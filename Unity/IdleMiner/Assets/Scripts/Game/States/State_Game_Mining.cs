using ANS.Common.ServiceLocator;

namespace Idler
{
    public class State_Game_Mining : State_Game_Base
    {
        private IMining miningCtrl;
        public override void OnActivate()
        {
            base.OnActivate(); 
            miningCtrl = ServiceLocator.Current.Get<IMining>();
            miningCtrl.Activate();
        }
        
        public override void OnDeactivate()
        {
            base.OnDeactivate();
            miningCtrl.Deactivate();
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
            Fsm.ChangeState<State_Game_Surface>();
        }
    }
}