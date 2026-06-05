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

        public event Action<ResourceData, float> OnResourceChanged;

        public IReadOnlyDictionary<ResourceData, float> Inventory => inventory;
        private readonly Dictionary<ResourceData, float> inventory = new();

        private readonly List<Interactable_Resource> activeResources = new();
        public IReadOnlyList<Interactable_Resource> ActiveResources => activeResources;

        private IPool poolCtrl;

        private void Awake()
        {
            poolCtrl = ServiceLocator.Current.Get<IPool>();
        }

        public void Register(Interactable_Resource resource) => activeResources.Add(resource);
        public void Unregister(Interactable_Resource resource) => activeResources.Remove(resource);

        public void Add(ResourceData resource, float amount)
        {
            inventory.TryGetValue(resource, out var current);
            inventory[resource] = current + amount;
            OnResourceChanged?.Invoke(resource, inventory[resource]);
        }

        public float Get(ResourceData resource)
        {
            inventory.TryGetValue(resource, out var amount);
            return amount;
        }
    }
}
