using ANS.Common.ServiceLocator;
using UnityEngine;

namespace Idler
{
    public interface ICamera : IGameService
    {
        Camera Cam { get; }
    }
}