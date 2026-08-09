using ANS.Common.ServiceLocator;
using UnityEngine;

namespace Idler
{
    public interface ICamera : IGameService
    {
        Camera Cam { get; }
        void Initialize();
        void SetCameraPosition(CameraPosition cameraPosition, bool instant = false);
    }
}