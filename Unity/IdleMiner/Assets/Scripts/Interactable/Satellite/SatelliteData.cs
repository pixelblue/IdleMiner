using UnityEngine;

namespace Idler
{
    [CreateAssetMenu(fileName = "Interactable_Satellite", menuName = "Idler/Interactables/SatelliteData")]
    public class SatelliteData : InteractableData
    {
        public PropertyDefinition slots;
        public PropertyDefinition slotValue;
        public PropertyDefinition slotSpeed;
        public ResourceData outputResource;
        public float outputAmount = 1f;
    }
}
