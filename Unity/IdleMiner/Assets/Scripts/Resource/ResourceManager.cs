using System.Collections.Generic;
using ANS.Common.ServiceLocator;
using UnityEngine;

namespace Idler
{
    public class ResourceManager : MonoBehaviour, IResourceManager
    {
        private IEventManager eventManagerCtrl;
        private ResourceData[] allResources;

        private void Awake()
        {
            eventManagerCtrl = ServiceLocator.Current.Get<IEventManager>();

            var data = ServiceLocator.Current.Get<IGame>().Data;
            var combined = new List<ResourceData>();
            combined.AddRange(data.rawResources);
            combined.AddRange(data.refinedResources);
            combined.AddRange(data.constructedResources);
            allResources = combined.FindAll(r => r != null).ToArray();
        }

        public void Add(ResourceData resource, float amount)
        {
            if (!resource.IsDiscovered && amount > 0f)
                resource.IsDiscovered = true;
            resource.CurrentAmount += amount;
            eventManagerCtrl.InvokeResourceChanged(resource, amount);
        }

        public float Get(ResourceData resource) => resource.CurrentAmount;

        public ResourceData[] GetAll() => allResources;

        public bool HasAny()
        {
            foreach (var r in allResources)
                if (r.CurrentAmount > 0f) return true;
            return false;
        }

        public void Save(SaveData data)
        {
            data.resources = new ResourceSaveEntry[allResources.Length];
            for (int i = 0; i < allResources.Length; i++)
                data.resources[i] = new ResourceSaveEntry { resourceName = allResources[i].name };
            foreach (var r in allResources)
                r.Save(data);
        }

        public void Load(SaveData data)
        {
            foreach (var r in allResources)
                r.Load(data);
        }

        public void Reset()
        {
            foreach (var r in allResources)
                r.Reset();
        }
    }
}
