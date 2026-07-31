using System;
using System.Collections.Generic;
using System.Linq;
using ANS.Common.ServiceLocator;
using UnityEngine;

namespace Idler
{
    public class MapController : MonoBehaviour, IMap, ISaveLoad
    {
        [field: SerializeField] public ResourceController ResourcePrefab { get; private set; }

        public List<Interactable> AllInteractables { get; private set; } = new List<Interactable>();
        public List<MineableObject> AllMineableObjects { get; private set; } = new List<MineableObject>();
        public Dictionary<ResourceData, List<MineableObject>> MineablesByResource { get; private set; } = new();
        public Interactable SelectedInteractable { get; set; }

        private IEventManager eventCtrl;
        private IObjectives objectivesCtrl;

        private void Awake()
        {
            eventCtrl = ServiceLocator.Current.Get<IEventManager>();
            objectivesCtrl = ServiceLocator.Current.Get<IObjectives>();
        }

        public void Initialize()
        {
            AllInteractables = GetComponentsInChildren<Interactable>(true).ToList();
            AllMineableObjects = GetComponentsInChildren<MineableObject>().ToList();
            MineablesByResource = AllMineableObjects
                .Where(m => m.Resource != null)
                .GroupBy(m => m.Resource)
                .ToDictionary(g => g.Key, g => g.ToList());
            foreach (var interactable in AllInteractables)
                interactable.Initialize();
        }

        public void Save(SaveData data)
        {
            data.interactables = new InteractableSaveEntry[AllInteractables.Count];
            for (int i = 0; i < AllInteractables.Count; i++)
                data.interactables[i] = new InteractableSaveEntry { interactableId = AllInteractables[i].SaveId };
            foreach (var interactable in AllInteractables)
                interactable.Save(data);
        }

        public void Load(SaveData data)
        {
            foreach (var interactable in AllInteractables)
                interactable.Load(data);
        }

        public void Reset()
        {
            foreach (var interactable in AllInteractables)
                interactable.Reset();
        }
    }
}