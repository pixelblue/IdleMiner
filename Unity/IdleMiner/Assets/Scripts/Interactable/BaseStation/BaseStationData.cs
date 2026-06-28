using UnityEngine;

namespace Idler
{
    [CreateAssetMenu(fileName = "Interactable_BaseStation", menuName = "Idler/Interactables/BaseStationData")]
    public class BaseStationData : InteractableData
    {
        public PropertyDefinition hitValue;
        public PropertyDefinition energyCrystals;
        public PropertyDefinition baseStationBots;
        public PropertyDefinition botHitValue;
    }
}
