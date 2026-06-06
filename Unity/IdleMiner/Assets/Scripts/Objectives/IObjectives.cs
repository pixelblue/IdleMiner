using System;
using ANS.Common.ServiceLocator;

namespace Idler
{
    public interface IObjectives : IGameService
    {
        int CurrentLevel { get; }
        ObjectiveLevelData CurrentLevelData { get; }
        float GetProgress(ObjectiveData objective);
        bool IsComplete(ObjectiveData objective);
        bool IsCurrentLevelComplete { get; }
        void AdvanceLevel();

        event Action<ObjectiveData, float> OnObjectiveProgress; // objective, current progress
        event Action<ObjectiveData> OnObjectiveCompleted;
        event Action OnLevelReadyToAdvance;
        event Action<int> OnLevelAdvanced;                      // new level index
    }
}
