using System.Collections.Generic;
using UnityEngine;

namespace Idler
{
    [CreateAssetMenu(fileName = "BuildingData", menuName = "Idler/BuildingData")]
    public class BuildingData : ScriptableObject
    {
        public string buildingName;
        public ResourceRequirement[] cost;

        public bool CanAfford(IReadOnlyDictionary<ResourceData, float> inventory)
        {
            foreach (var req in cost)
            {
                inventory.TryGetValue(req.resource, out var held);
                if (held < req.amount) return false;
            }
            return true;
        }

        public void Consume(Dictionary<ResourceData, float> inventory)
        {
            foreach (var req in cost)
            {
                inventory.TryGetValue(req.resource, out var held);
                inventory[req.resource] = Mathf.Max(0f, held - req.amount);
            }
        }
    }
}
