using System;
using ANS.Common.ServiceLocator;

namespace Idler
{
    public interface IObjectives : IGameService, ISaveLoad
    {
        int CurrentLevel { get; }
        ObjectiveLevelData CurrentLevelData { get; }
        float GetProgress(ObjectiveData objective);
        bool IsComplete(ObjectiveData objective);
        bool IsCurrentLevelComplete { get; }
        void AdvanceLevel();
    }
}
