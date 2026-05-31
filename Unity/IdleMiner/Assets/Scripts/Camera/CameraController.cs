using ANS_Core.FSM;
using UnityEngine;

namespace Idler
{
    public class CameraController : MonoBehaviour, ICamera
    {
        [field: SerializeField] public FSM_StateManager Fsm { get; set; }
        [field: SerializeField] public Camera Cam { get; private set; }
        [field: SerializeField] public float orthoSizeMining { get; private set; } = 20;
        [field: SerializeField] public float orthoSizeBuilding { get; private set; } = 7;

    }
}