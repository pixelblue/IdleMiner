using ANS.Common.ServiceLocator;

namespace Idler
{
    public interface IResourceManager : IGameService, ISaveLoad
    {
        void Add(ResourceData resource, float amount);
        float Get(ResourceData resource);
        bool HasAny();
        ResourceData[] GetAll();
    }
}
