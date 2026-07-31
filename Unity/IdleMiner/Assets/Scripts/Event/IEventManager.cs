using System;
using ANS.Common.ServiceLocator;

namespace Idler
{
    public interface IEventManager : IGameService
    {
        event Action<ResourceData, float> ResourceChanged;
        event Action<ObjectiveData, float> ObjectiveProgress;
        event Action LevelObjectivesCompleted;
        event Action<int> LevelAdvanced;
        event Action<InteractableData> InteractablePurchased;

        void InvokeResourceChanged(ResourceData resource, float amount);
        void InvokeObjectiveProgress(ObjectiveData objective, float currentAmount);
        void InvokeLevelObjectivesCompleted();
        void InvokeLevelAdvanced(int level);
        void InvokeInteractablePurchased(InteractableData interactableData);
    }
}