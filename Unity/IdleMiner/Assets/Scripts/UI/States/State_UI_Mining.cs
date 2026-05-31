namespace Idler
{
    public class State_UI_Mining : State_UI_Base
    {
        public override void OnActivate()
        {
            base.OnActivate();
            Ctrl.Screen_Mining.Show();
        }

        public override void OnDeactivate()
        {
            base.OnDeactivate();
            Ctrl.Screen_Mining.Hide();
        }
    }
}