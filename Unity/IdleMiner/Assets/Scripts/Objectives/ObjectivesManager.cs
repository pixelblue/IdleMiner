using System;
using System.Collections.Generic;
using System.Linq;
using ANS.Common.ServiceLocator;
using UnityEngine;

namespace Idler
{
    public class ObjectivesManager : MonoBehaviour, IObjectives
    {
        [SerializeField] private ObjectivesConfig config;

        public int CurrentLevel { get; private set; }
        public ObjectiveLevelData CurrentLevelData => config.levels[CurrentLevel];
        public bool IsCurrentLevelComplete => ActiveObjectives().All(IsComplete);

        public event Action<ObjectiveData, float> OnObjectiveProgress;
        public event Action<ObjectiveData> OnObjectiveCompleted;
        public event Action OnLevelReadyToAdvance;
        public event Action<int> OnLevelAdvanced;

        private readonly Dictionary<ObjectiveData, float> progress = new();
        private readonly Dictionary<ResourceData, float> lastInventory = new();

        private IResource resourceMgr;
        private IEvent eventMgr;

        private void Awake()
        {
            resourceMgr = ServiceLocator.Current.Get<IResource>();
            eventMgr    = ServiceLocator.Current.Get<IEvent>();
            LoadLevel(0);
        }

        public float GetProgress(ObjectiveData objective) =>
            progress.TryGetValue(objective, out var p) ? p : 0f;

        public bool IsComplete(ObjectiveData objective) =>
            GetProgress(objective) >= objective.targetAmount;

        public void AdvanceLevel()
        {
            if (!IsCurrentLevelComplete) return;
            if (CurrentLevel >= config.levels.Length - 1) return;

            UnsubscribeEvents();
            LoadLevel(CurrentLevel + 1);
            OnLevelAdvanced?.Invoke(CurrentLevel);
        }

        private void LoadLevel(int index)
        {
            CurrentLevel = index;
            progress.Clear();
            lastInventory.Clear();

            var objectives = ActiveObjectives();
            foreach (var obj in objectives)
                progress[obj] = 0f;

            // seed lastInventory from current state so pre-existing amounts don't count
            foreach (var obj in objectives.Where(o => o.type == ObjectiveType.CollectResource && o.targetResource != null))
                lastInventory[obj.targetResource] = resourceMgr.Get(obj.targetResource);

            SubscribeEvents();
        }

        private void SubscribeEvents()
        {
            eventMgr.ResourceChanged += OnResourceChanged;
            eventMgr.BuildingConstructed   += OnBuildingConstructed;
        }

        private void UnsubscribeEvents()
        {
            eventMgr.ResourceChanged -= OnResourceChanged;
            eventMgr.BuildingConstructed   -= OnBuildingConstructed;
        }

        private void OnDestroy() => UnsubscribeEvents();

        private void OnResourceChanged(ResourceData resource, float newTotal)
        {
            lastInventory.TryGetValue(resource, out var prev);
            var delta = Mathf.Max(0f, newTotal - prev);
            lastInventory[resource] = newTotal;

            foreach (var obj in ActiveObjectives())
            {
                if (obj.type != ObjectiveType.CollectResource) continue;
                if (obj.targetResource != resource) continue;
                AdvanceProgress(obj, delta);
            }
        }

        private void OnBuildingConstructed(BuildingData building)
        {
            foreach (var obj in ActiveObjectives())
            {
                if (obj.type != ObjectiveType.BuildStructure) continue;
                if (obj.targetBuilding != building) continue;
                AdvanceProgress(obj, 1f);
            }
        }

        private void AdvanceProgress(ObjectiveData obj, float delta)
        {
            if (IsComplete(obj)) return;

            progress[obj] = Mathf.Min(progress[obj] + delta, obj.targetAmount);
            OnObjectiveProgress?.Invoke(obj, progress[obj]);

            if (IsComplete(obj))
            {
                OnObjectiveCompleted?.Invoke(obj);
                CheckLevelCompletion();
            }
        }

        private void CheckLevelCompletion()
        {
            if (IsCurrentLevelComplete)
                OnLevelReadyToAdvance?.Invoke();
        }

        // Returns the active objectives for the current level, clamped to max 3.
        private IEnumerable<ObjectiveData> ActiveObjectives() =>
            CurrentLevelData.objectives.Take(3);
    }
}
