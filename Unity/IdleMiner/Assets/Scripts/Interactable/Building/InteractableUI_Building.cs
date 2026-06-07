using UnityEngine;

namespace Idler
{
    public class InteractableUI_Building : InteractableUI
    {
        [SerializeField] private GameObject lockedState;
        [SerializeField] private GameObject unlockedState;
        [SerializeField] private GameObject constructingState;
        [SerializeField] private GameObject activateState;
        [SerializeField] private GameObject activeState;
    }
}