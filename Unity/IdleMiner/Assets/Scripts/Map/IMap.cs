using System.Collections.Generic;
using ANS.Common.ServiceLocator;

namespace Idler
{
    public interface IMap : IGameService
    {
        ResourceController ResourcePrefab { get; }
        List<Interactable> AllInteractables { get;}

        void Initialize();

    }
}