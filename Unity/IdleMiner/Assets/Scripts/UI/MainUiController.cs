using ANS_Core.FSM;
using Idler;
using UnityEngine;

namespace Idler
{
    public class MainUiController : MonoBehaviour, IMainUI
    {
        [field: SerializeField] public FSM_StateManager Fsm { get; private set; }
        [field: SerializeField] public Screen_Mining Screen_Mining { get; private set; }
        [field: SerializeField] public Screen_Building Screen_Building { get; private set; }
    }
}
