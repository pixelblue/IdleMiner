namespace Idler.States
{
    public class State_DroneSpawner_Init : State_DroneSpawner_Base
    {
        public override void OnActivate()
        {
            base.OnActivate();
            Fsm.ChangeState<State_DroneSpawner_Locked>();
        }

        public override void OnDeactivate()
        {
            
        }
    }
}