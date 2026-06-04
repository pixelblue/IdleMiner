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
            
            Fsm.ChangeState<State_Game_Surface>();
        }
        
        public override void OnDeactivate()
        {
            base.OnDeactivate();
        }
    }
}