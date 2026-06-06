using System;
using UnityEngine;

namespace Idler
{
    public class EventManager : MonoBehaviour, IEvent
    {
        public event Action MiningStarted;
        public event Action MiningStopped;
        public event Action<BuildingData> BuildingConstructed;
        public event Action<ResourceData, float> ResourceChanged;
        
        public void InvokeMiningStarted() => MiningStarted?.Invoke();
        public void InvokeMiningStopped() => MiningStopped?.Invoke();
        public void InvokeBuildingConstructed(BuildingData building) => BuildingConstructed?.Invoke(building);
        public void InvokeResourceChanged(ResourceData resource, float amount) => ResourceChanged?.Invoke(resource, amount);
    }
}
