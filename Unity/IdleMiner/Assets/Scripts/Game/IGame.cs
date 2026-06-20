using ANS.Common.ServiceLocator;
using UnityEngine;

namespace Idler
{
    public interface IGame : IGameService, ISaveLoad
    {
        GameData Data { get; }
    }
}
