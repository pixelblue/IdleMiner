using UnityEngine;

namespace Idler
{
    [CreateAssetMenu(fileName = "BuildingData", menuName = "Idler/BuildingData")]
    public class BuildingData : ScriptableObject
    {
        public string buildingName;
        public ResourceRequirement[] cost;

        public bool CanAfford()
        {
            foreach (var req in cost)
                if (req.resource.CurrentAmount < req.amount) return false;
            return true;
        }
    }
}
