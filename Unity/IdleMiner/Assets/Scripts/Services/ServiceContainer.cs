using ANS.Common;
using ANS.Common.ServiceLocator;
using UnityEngine;

namespace Idler
{
    [DefaultExecutionOrder(-300)]
    public class ServiceContainer : MonoBehaviour
    {
        private void Awake()
        {
            Initialize();
        }

        private void Initialize()
        {
            // Initialize default service locator.
            ServiceLocator.Initialize();

            // Register all services needed
            ServiceLocator.Current.Register<IEvent>(FindFirstObjectByType<EventManager>());
            ServiceLocator.Current.Register<IPool>(FindFirstObjectByType<PoolManager>());
            ServiceLocator.Current.Register<IGame>(FindFirstObjectByType<GameManager>());
            ServiceLocator.Current.Register<IMainUI>(FindFirstObjectByType<MainUiController>());
            ServiceLocator.Current.Register<ICamera>(FindFirstObjectByType<CameraController>());
            ServiceLocator.Current.Register<IMining>(FindFirstObjectByType<MiningController>());
            ServiceLocator.Current.Register<ISurface>(FindFirstObjectByType<SurfaceController>());
            ServiceLocator.Current.Register<ICursor>(FindFirstObjectByType<CursorController>());
            ServiceLocator.Current.Register<IResource>(FindFirstObjectByType<ResourceManager>());
        }
    }
}