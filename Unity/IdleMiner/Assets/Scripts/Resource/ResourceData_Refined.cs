using UnityEngine;

namespace Idler
{
    [CreateAssetMenu(fileName = "RefinedResource", menuName = "Idler/RefinedResource")]
    public class ResourceData_Refined : ResourceData, ISaveLoad
    {
        public ResourceData requiredResource;
        public int requiredAmount;

        public bool HasEnoughRequiredResources()
        {
            return requiredResource.CurrentAmount >= requiredAmount;
        }
    }
}