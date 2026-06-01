namespace Idler
{
    public class State_UI_Surface : State_UI_Base
    {
        public override void OnActivate()
        {
            base.OnActivate();
            Ctrl.Screen_Building.Show();
        }
        
        public override void OnDeactivate()
        {
            base.OnDeactivate();
            Ctrl.Screen_Building.Hide();
        }
    }
}