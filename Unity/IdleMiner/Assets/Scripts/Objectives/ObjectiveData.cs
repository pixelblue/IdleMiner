using UnityEngine;

namespace Idler
{
    [CreateAssetMenu(fileName = "Objective", menuName = "Idler/Objectives/Objective")]
    public class ObjectiveData : ScriptableObject
    {
        public string description;
        public ObjectiveType type;
        public ResourceData targetResource; // CollectResource
        public BuildingData targetBuilding; // BuildStructure
        public float targetAmount;
    }
}
