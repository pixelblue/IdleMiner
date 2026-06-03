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
        [field: SerializeField] public Transform scaleTarget { get; private set; }

        public Vector3 OrigScaleTarget { get; private set; }
        
        public void Initialize()
        {
            OrigScaleTarget = scaleTarget.localScale;
            Fsm.enabled = true;
        }
    }
}