using System.Collections.Generic;
using ANS.Common.ServiceLocator;

namespace Idler
{
    public interface IMap : IGameService
    {
        MiningController MiningCtrl { get; }
        SurfaceController SurfaceCtrl { get; }
        ResourceController ResourcePrefab { get; }
        List<Interactable> AllInteractables { get;}

        void RegisterInteractable(Interactable interactable);
        void UnregisterInteractable(Interactable interactable);
    }
}