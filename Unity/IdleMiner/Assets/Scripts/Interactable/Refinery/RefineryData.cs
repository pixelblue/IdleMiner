using UnityEngine;

namespace Idler
{
    [CreateAssetMenu(fileName = "Interactable_Refinery", menuName = "Idler/Interactables/RefineryData")]
    public class RefineryData : InteractableData
    {
        public PropertyDefinition slots;
        public PropertyDefinition slotValue;
        public PropertyDefinition slotSpeed;
    }
}