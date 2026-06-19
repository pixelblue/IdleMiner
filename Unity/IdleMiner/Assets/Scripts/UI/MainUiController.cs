using ANS_Core.FSM;
using Idler;
using UnityEngine;

namespace Idler
{
    public class MainUiController : MonoBehaviour, IMainUI
    {
        [field: SerializeField] public FSM_StateManager Fsm { get; private set; }
        [field: SerializeField] public CursorController CursorCtrl { get; private set; }
        [field: SerializeField] public UI_ResourcePanel ResourcePanel { get; private set; }
        [field: SerializeField] public UI_ObjectivePanelController ObjectivePanel { get; private set; }
        [field: SerializeField] public Transform InteractablesContainer { get; private set; }
        [field: SerializeField] public Transform ResourcesContainer { get; private set; }
        
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
