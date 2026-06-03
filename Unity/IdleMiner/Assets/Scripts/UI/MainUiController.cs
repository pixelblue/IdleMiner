using ANS_Core.FSM;
using Idler;
using UnityEngine;

namespace Idler
{
    public class MainUiController : MonoBehaviour, IMainUI
    {
        [field: SerializeField] public FSM_StateManager Fsm { get; private set; }
        [field: SerializeField] public Screen_Mining Screen_Mining { get; private set; }
        [field: SerializeField] public Screen_Surface Screen_Surface { get; private set; }

        public void ShowScreen(Screen screen)
        {
            var allScreens = GetComponentsInChildren<Screen>();
            foreach (var s in allScreens)
            {
                s.Hide();
            }
            screen.Show();
        }

        public void Initialize()
        {
            Fsm.enabled = true;
        }
    }
}
