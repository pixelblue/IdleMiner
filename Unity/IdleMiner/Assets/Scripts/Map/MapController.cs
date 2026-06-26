using System;
using System.Collections.Generic;
using System.Linq;
using ANS.Common.ServiceLocator;
using UnityEngine;

namespace Idler
{
    public class MapController : MonoBehaviour, IMap, ISaveLoad
    {
        [field: SerializeField] public GameObject[] allStageContainers;
        [field: SerializeField] public ResourceController ResourcePrefab { get; private set; }

        public List<Interactable> AllInteractables { get; private set; } = new List<Interactable>();

        private IGame gameCtrl;
        private IEventManager eventCtrl;
        private IObjectives objectivesCtrl;

        private void Awake()
        {
            gameCtrl = ServiceLocator.Current.Get<IGame>();
            eventCtrl = ServiceLocator.Current.Get<IEventManager>();
            objectivesCtrl = ServiceLocator.Current.Get<IObjectives>();
        }

        private void OnEnable()
        {
            eventCtrl.LevelAdvanced += OnLevelAdvanced;
        }

        private void OnDisable()
        {
            eventCtrl.LevelAdvanced -= OnLevelAdvanced;
        }

        public void Initialize()
        {
            AllInteractables = GetComponentsInChildren<Interactable>().ToList();
            foreach (var interactable in AllInteractables)
                interactable.Initialize();
        }

        private void OnLevelAdvanced(int newLevel)
        {
            UpdateStagesInstantly();
        }
        
        private void UpdateStagesInstantly()
        {
            for (int i = 0; i < allStageContainers.Length; i++)
            {
                if(objectivesCtrl.CurrentLevel >= i)
                    allStageContainers[i].SetActive(true);
                else
                    allStageContainers[i].SetActive(false);
            }
        }

        public void Save(SaveData data)
        {
            var defs = gameCtrl.Data.allInteractables;
            data.interactables = new InteractableSaveEntry[defs.Length];
            for (int i = 0; i < defs.Length; i++)
                data.interactables[i] = new InteractableSaveEntry { interactableId = defs[i].interactableName };
            foreach (var interactable in AllInteractables)
                interactable.Save(data);
        }

        public void Load(SaveData data)
        {
            foreach (var interactable in AllInteractables)
                interactable.Load(data);

            UpdateStagesInstantly();
            
        }

        public void Reset()
        {
            foreach (var interactable in AllInteractables)
                interactable.Reset();
            
            UpdateStagesInstantly();
        }
    }
}