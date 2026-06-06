using System;
using ANS.Common.ServiceLocator;

namespace Idler
{
    public interface IEvent : IGameService
    {
        event Action MiningStarted;
        event Action MiningStopped;
        event Action<BuildingData> BuildingConstructed;
        event Action<ResourceData, float> ResourceChanged;

        void InvokeMiningStarted();
        void InvokeMiningStopped();
        void InvokeBuildingConstructed(BuildingData building);
        void InvokeResourceChanged(ResourceData resource, float amount);
    }
}