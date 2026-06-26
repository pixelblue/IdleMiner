using UnityEngine;

namespace Idler
{
    [CreateAssetMenu(fileName = "Interactable_Mineable", menuName = "Idler/Interactables/MinableData")]
    public class MinableData : InteractableData
    {
        public PropertyDefinition hitValue;
        public PropertyDefinition drones;
        public PropertyDefinition droneValue;
    }
}