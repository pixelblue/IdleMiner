using System;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

namespace Idler
{
    public class MapController : MonoBehaviour, IMap
    {
        [field: SerializeField] public ResourceController ResourcePrefab { get; private set; }

        public List<Interactable> AllInteractables { get; private set; } = new List<Interactable>();

        public void Initialize()
        {
            AllInteractables = GetComponentsInChildren<Interactable>().ToList();

            foreach (var interactable in AllInteractables)
            {
                interactable.Initialize();
            }
        }

    }
}