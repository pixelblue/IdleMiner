using ANS.Common.ServiceLocator;
using System;
using System.Collections.Generic;

namespace Idler
{
    public interface IResource : IGameService
    {
        IReadOnlyDictionary<ResourceData, float> Inventory { get; }

        void Add(ResourceData resource, float amount);
        float Get(ResourceData resource);
        void Register(ResourceController resource);
        void Unregister(ResourceController resource);
        IReadOnlyList<ResourceController> ActiveResources { get; }
    }
}
