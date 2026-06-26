using System.Collections.Generic;
using ANS.Common.ServiceLocator;

namespace Idler
{
    public interface IMap : IGameService, ISaveLoad
    {
        ResourceController ResourcePrefab { get; }
        List<Interactable> AllInteractables { get;}

        void Initialize();

    }
}