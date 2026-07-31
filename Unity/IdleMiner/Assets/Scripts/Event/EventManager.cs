using System;
using UnityEngine;

namespace Idler
{
    public class EventManager : MonoBehaviour, IEventManager
    {
        public event Action<ResourceData, float> ResourceChanged;
        public event Action<ObjectiveData, float> ObjectiveProgress;
        public event Action LevelObjectivesCompleted;
        public event Action<int> LevelAdvanced;
        public event Action<InteractableData> InteractablePurchased;

        public void InvokeResourceChanged(ResourceData resource, float amount) => ResourceChanged?.Invoke(resource, amount);
        public void InvokeObjectiveProgress(ObjectiveData objective, float currentAmount) => ObjectiveProgress?.Invoke(objective, currentAmount);
        public void InvokeLevelObjectivesCompleted() => LevelObjectivesCompleted?.Invoke();
        public void InvokeLevelAdvanced(int level) => LevelAdvanced?.Invoke(level);
        public void InvokeInteractablePurchased(InteractableData interactableData) => InteractablePurchased?.Invoke(interactableData);
    }
}
