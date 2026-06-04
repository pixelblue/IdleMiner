using ANS.Common.ServiceLocator;
using System;

namespace Idler
{
    public interface IResource : IGameService
    {
        void Add(ResourceData resource, float amount);
        event Action<ResourceData, float> OnResourceChanged; // resource, new amount
    }
}
