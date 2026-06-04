using System;
using UnityEngine;

namespace Idler
{
    public class ResourceManager : MonoBehaviour, IResource
    {
        public event Action<ResourceData, float> OnResourceChanged;

        public void Add(ResourceData resource, float amount)
        {
            resource.amount += amount;
            OnResourceChanged?.Invoke(resource, resource.amount);
        }
    }
}
