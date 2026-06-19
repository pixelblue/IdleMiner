namespace Idler
{
    public class State_UI_Init : State_UI_Base
    {
            public override void OnActivate()
            {
                base.OnActivate();
                Ctrl.ResourcePanel.Initialize();
                Ctrl.ObjectivePanel.Initialize();
            }

            public override void OnDeactivate()
            {
                base.OnDeactivate();
            }
    }
}