namespace Idler
{
    public class State_UI_Init : State_UI_Base
    {
            public override void OnActivate()
            {
                base.OnActivate();
                Fsm.ChangeState<State_UI_Building>();
            }

            public override void OnDeactivate()
            {
                base.OnDeactivate();
            }
    }
}