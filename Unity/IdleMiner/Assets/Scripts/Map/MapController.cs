using System;
using System.Collections.Generic;
using UnityEngine;

namespace Idler
{
    public class MapController : MonoBehaviour, IMap
    {
        [field: SerializeField] public MiningController MiningCtrl { get; private set; }
        [field: SerializeField] public SurfaceController SurfaceCtrl { get; private set; }
        [field: SerializeField] public ResourceController ResourcePrefab { get; private set; }

        public List<Interactable> AllInteractables { get; private set; } = new List<Interactable>();

        public void RegisterInteractable(Interactable interactable)
        {
            if(AllInteractables.Contains(interactable) == false) AllInteractables.Add(interactable);
        }

        public void UnregisterInteractable(Interactable interactable)
        {
            if(AllInteractables.Contains(interactable)) AllInteractables.Remove(interactable);
        }
    }
}