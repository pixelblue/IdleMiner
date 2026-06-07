using ANS_Core.FSM;
using UnityEngine;

namespace Idler
{
    public class Interactable_BuildingDroneSpawner : Interactable_Building
    {
        [field: SerializeField] public FSM_StateManager Fsm { get; private set; }
    }
}