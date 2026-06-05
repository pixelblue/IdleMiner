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
        event Action<ResourceData, float> OnResourceChanged; // resource, new total

        void Register(Interactable_Resource resource);
        void Unregister(Interactable_Resource resource);
        IReadOnlyList<Interactable_Resource> ActiveResources { get; }
    }
}
