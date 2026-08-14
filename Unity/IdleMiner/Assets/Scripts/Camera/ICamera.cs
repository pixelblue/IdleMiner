using ANS.Common.ServiceLocator;
using Unity.Cinemachine;
using UnityEngine;

namespace Idler
{
    public interface ICamera : IGameService
    {
        Camera Cam { get; }
        void Initialize();
    }
}