using System;
using System.Collections.Generic;
using ANS.Common;
using ANS.Common.ServiceLocator;
using UnityEngine;
using UnityEngine.UI;

namespace Idler
{
    public class ResourceManager : MonoBehaviour, IResource
    {
        [SerializeField] private Image resourceImagePrefab;

        public IReadOnlyDictionary<ResourceData, float> Inventory => inventory;
        private readonly Dictionary<ResourceData, float> inventory = new();

        private readonly List<ResourceController> activeResources = new();
        public IReadOnlyList<ResourceController> ActiveResources => activeResources;

        private IPool poolCtrl;
        private IEvent eventCtrl;

        private void Awake()
        {
            poolCtrl = ServiceLocator.Current.Get<IPool>();
            eventCtrl = ServiceLocator.Current.Get<IEvent>();
        }

        public void Register(ResourceController resource) => activeResources.Add(resource);
        public void Unregister(ResourceController resource) => activeResources.Remove(resource);

        public void Add(ResourceData resource, float amount)
        {
            print("adding amount of " + amount);
            inventory.TryGetValue(resource, out var current);
            inventory[resource] = current + amount;
            eventCtrl.InvokeResourceChanged(resource, inventory[resource]);
        }

        public float Get(ResourceData resource)
        {
            inventory.TryGetValue(resource, out var amount);
            return amount;
        }
    }
}
