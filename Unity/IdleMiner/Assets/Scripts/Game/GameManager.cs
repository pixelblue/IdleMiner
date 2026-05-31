using ANS.Common.ServiceLocator;
using UnityEngine;

namespace Idler
{
    public class GameManager : MonoBehaviour, IGame
    {
        [field: SerializeField] public GameData Data { get; private set; }
    }
    
}
