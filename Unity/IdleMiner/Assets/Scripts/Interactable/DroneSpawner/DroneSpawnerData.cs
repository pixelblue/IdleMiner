using UnityEngine;

namespace Idler.DroneSpawner
{
    [CreateAssetMenu(fileName = "Interactable_DroneSpawner", menuName = "Idler/Interactables/DroneSpawnerData")]
    public class DroneSpawnerData : InteractableData
    {
        public PropertyDefinition drones;
        public PropertyDefinition dronesCapacity;
        public PropertyDefinition dronesSpeed;
    }
}