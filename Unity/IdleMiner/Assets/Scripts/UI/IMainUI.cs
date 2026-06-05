using ANS.Common.ServiceLocator;
using UnityEngine;

namespace Idler
{
    public interface IMainUI : IGameService
    {
        Transform ResourceContainer { get; }
        CursorController CursorCtrl { get; }
        void Initialize();
    }
}
