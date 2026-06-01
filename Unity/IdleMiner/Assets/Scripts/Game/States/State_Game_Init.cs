namespace Idler
{
    public class State_Game_Init : State_Game_Base
    {
        public override void OnActivate()
        {
            base.OnActivate();
            Fsm.ChangeState<State_Game_Surface>();
        }
        
        public override void OnDeactivate()
        {
            base.OnDeactivate();
        }
    }
}