using System;
using System.Collections.Generic;
using System.Linq;
using ANS.Common.ServiceLocator;
using UnityEngine;

namespace Idler
{
    public class ObjectivesManager : MonoBehaviour, IObjectives
    {
        public int CurrentLevel { get; private set; }
        public ObjectiveLevelData CurrentLevelData => config.levels[CurrentLevel];
        public bool IsCurrentLevelComplete => ActiveObjectives().All(IsComplete);
        
        private ObjectivesConfig config;
        private IEventManager eventManagerMgr;

        private void Awake()
        {
            config   = ServiceLocator.Current.Get<IGame>().Data.objectives;
            eventManagerMgr = ServiceLocator.Current.Get<IEventManager>();
        }

        private void OnEnable()
        {
            eventManagerMgr.ResourceChanged += OnResourceChanged;
        }

        private void OnDisable()
        {
            eventManagerMgr.ResourceChanged -= OnResourceChanged;
        }

        public float GetProgress(ObjectiveData objective) => objective.CurrentAmount;

        public bool IsComplete(ObjectiveData objective) =>
            objective.CurrentAmount >= objective.targetAmount;

        public void AdvanceLevel()
        {
            if (!IsCurrentLevelComplete) return;
            if (CurrentLevel >= config.levels.Length - 1) return;

            LoadLevel(CurrentLevel + 1);
            eventManagerMgr.InvokeLevelAdvanced(CurrentLevel);
        }

        private void LoadLevel(int index)
        {
            CurrentLevel = index;
            foreach (var obj in ActiveObjectives())
                obj.CurrentAmount = 0f;
        }

        private void OnResourceChanged(ResourceData resource, float delta)
        {
            if (delta <= 0f) return;

            foreach (var obj in ActiveObjectives())
            {
                if (obj.type != ObjectiveType.CollectResource) continue;
                if (obj.targetResource != resource) continue;
                AdvanceProgress(obj, delta);
            }
        }

        private void AdvanceProgress(ObjectiveData obj, float delta)
        {
            if (IsComplete(obj)) return;

            obj.CurrentAmount = Mathf.Min(obj.CurrentAmount + delta, obj.targetAmount);
            eventManagerMgr.InvokeObjectiveProgress(obj, obj.CurrentAmount);

            if (IsComplete(obj))
                CheckLevelCompletion();
        }

        private void CheckLevelCompletion()
        {
            if (IsCurrentLevelComplete)
                eventManagerMgr.InvokeLevelObjectivesCompleted();
        }

        public void Save(SaveData data)
        {
            data.currentLevel = CurrentLevel;
            var objectives = ActiveObjectives().ToArray();
            // pre-populate entries so each objective can find itself by name
            data.objectives = new ObjectiveSaveEntry[objectives.Length];
            for (int i = 0; i < objectives.Length; i++)
                data.objectives[i] = new ObjectiveSaveEntry { objectiveName = objectives[i].name };
            foreach (var obj in objectives)
                obj.Save(data);
        }

        public void Load(SaveData data)
        {
            LoadLevel(data.currentLevel);
            foreach (var level in config.levels)
                foreach (var obj in level.objectives)
                    obj.Load(data);
        }

        public void Reset()
        {
            foreach (var obj in ActiveObjectives())
                obj.Reset();
            LoadLevel(0);
        }

        // Returns the active objectives for the current level, clamped to max 3.
        private IEnumerable<ObjectiveData> ActiveObjectives() =>
            CurrentLevelData.objectives.Take(3);
    }
}
