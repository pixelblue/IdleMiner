using System.Collections.Generic;
using ANS.Common.ServiceLocator;

namespace Idler
{
    public interface IMap : IGameService, ISaveLoad
    {
        ResourceController ResourcePrefab { get; }
        Interactable SelectedInteractable { get; set; }
        List<Interactable> AllInteractables { get;}
        Dictionary<ResourceData, List<MineableObject>> MineablesByResource { get; } 

        void Initialize();

    }
}