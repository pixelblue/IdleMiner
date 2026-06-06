using ANS.Common;
using ANS.Common.ServiceLocator;

namespace Idler
{
    public class State_Game_Init : State_Game_Base
    {
        public override void OnActivate()
        {
            base.OnActivate();

            ServiceLocator.Current.Get<IPool>().CreatePools();
            ServiceLocator.Current.Get<ICamera>().Initialize();
            ServiceLocator.Current.Get<IMainUI>().Initialize();
            
            var mapCtrl = ServiceLocator.Current.Get<IMap>();
            mapCtrl.SurfaceCtrl.Initialize();
            
            EventCtrl.InvokeMiningStarted();
            mapCtrl.SurfaceCtrl.Deactivate();
            Fsm.ChangeState<State_Game_Mining>();
        }
        
        public override void OnDeactivate()
        {
            base.OnDeactivate();
        }
    }
}