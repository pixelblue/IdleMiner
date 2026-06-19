using ANS.Common.ServiceLocator;
using UnityEngine;

namespace Idler
{
    public interface IMainUI : IGameService
    {
        Transform InteractablesContainer { get; }
        Transform ResourcesContainer { get; }
        CursorController CursorCtrl { get; }
        void Initialize();
    }
}
