namespace Idler
{
    public class State_UI_Init : State_UI_Base
    {
            public override void OnActivate()
            {
                base.OnActivate();
                Ctrl.CursorCtrl.Initialize();
                Ctrl.ResourcePanel.Initialize();
                Ctrl.ObjectivePanel.Initialize();
                Ctrl.BuildingsPanel.Initialize();
            }

            public override void OnDeactivate()
            {
                base.OnDeactivate();
            }
    }
}