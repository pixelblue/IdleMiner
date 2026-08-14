using System;
using System.Collections.Generic;
using System.Linq;
using ANS.Common.ServiceLocator;
using NaughtyAttributes;
using UnityEngine;
using UnityEngine.Playables;

namespace Idler
{
    public class MapController : MonoBehaviour, IMap, ISaveLoad
    {
        [field: SerializeField] public Light MainLight { get; private set; }
        [field: SerializeField] public ResourceController ResourcePrefab { get; private set; }
        [field: SerializeField] public List<PlayableDirector> AllPlayables { get; private set; }
        [SerializeField] private List<GameObject> allStageContainers;
        [SerializeField] private GameObject dynamicRocksContainer;

        public List<Interactable> AllInteractables { get; private set; } = new List<Interactable>();
        public List<MineableObject> AllMineableObjects { get; private set; } = new List<MineableObject>();
        public Dictionary<ResourceData, List<MineableObject>> MineablesByResource { get; private set; } = new();
        public Interactable SelectedInteractable { get; set; }

        private IEventManager eventCtrl;
        private IObjectives objectivesCtrl;
        private ICamera camCtrl;

        private void Awake()
        {
            eventCtrl = ServiceLocator.Current.Get<IEventManager>();
            objectivesCtrl = ServiceLocator.Current.Get<IObjectives>();
            camCtrl = ServiceLocator.Current.Get<ICamera>();

            // Gather in Awake so save data can be loaded before Initialize() applies unlock state
            AllInteractables = GetComponentsInChildren<Interactable>(true).ToList();
            AllMineableObjects = GetComponentsInChildren<MineableObject>().ToList();
            MineablesByResource = AllMineableObjects
                .Where(m => m.Resource != null)
                .GroupBy(m => m.Resource)
                .ToDictionary(g => g.Key, g => g.ToList());
        }

        private void OnEnable()
        {
            eventCtrl.InteractablePurchased += OnInteractablePurchased;
            eventCtrl.LevelAdvanced += OnLevelAdvanced;
        }

        private void OnDisable()
        {
            eventCtrl.InteractablePurchased -= OnInteractablePurchased;
            eventCtrl.LevelAdvanced -= OnLevelAdvanced;
        }

        public void Initialize()
        {
            foreach (var interactable in AllInteractables)
                interactable.Initialize();

            SetStage(objectivesCtrl.CurrentLevel);
        }

        private void SetStage(int stageIndex)
        {
            AllPlayables[stageIndex].time = 0.0f;
            AllPlayables[stageIndex].Evaluate();
        }

        private void OnLevelAdvanced(int level)
        {
            AddRigidbodyForce();
            AllPlayables[level-1].Play();
        }

        [SerializeField] private int debugStage = 0;
        [Button]
        public void DebugStage()
        {
            SetStage(debugStage);
        }
        
        private void AddRigidbodyForce()
        {
            var allRbs = dynamicRocksContainer.GetComponentsInChildren<Rigidbody>(true);
            foreach (var rb in allRbs)
            {
                rb.isKinematic = false;
                rb.AddExplosionForce(5000f, Vector3.zero, 20.0f);
            }
        }

        private void OnInteractablePurchased(InteractableData interactableData)
        {
            foreach (var interactable in AllInteractables)
                if (interactable.Data == interactableData) interactable.Initialize();
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