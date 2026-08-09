using System.Collections.Generic;
using ANS.Common.ServiceLocator;
using UnityEngine;

namespace Idler
{
    public interface IMap : IGameService, ISaveLoad
    {
        Light MainLight { get; }
        ResourceController ResourcePrefab { get; }
        Interactable SelectedInteractable { get; set; }
        List<Interactable> AllInteractables { get;}
        Dictionary<ResourceData, List<MineableObject>> MineablesByResource { get; } 

        void Initialize();

    }
}