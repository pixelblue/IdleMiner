using ANS_Core.FSM;
using ANS.Common.ServiceLocator;
using UnityEngine;

namespace Idler
{
    public class GameManager : MonoBehaviour, IGame
    {
        [field: SerializeField] public GameData Data { get; private set; }
        [field: SerializeField] public FSM_StateManager Fsm { get; private set; }
    }
    
}
