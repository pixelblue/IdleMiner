namespace Idler.States
{
    public class State_Camera_Init : State_Camera_Base
    {
        public override void OnActivate()
        {
            base.OnActivate();
            if (ObjectivesCtrl.CurrentLevel >= 2)
            {
                Fsm.ChangeState<State_Camera_Free>();
            }
            else
            {
                Fsm.ChangeState<State_Camera_Fixed>();
            }
        }

        public override void OnDeactivate()
        {
            base.OnDeactivate();
        }
    }
}