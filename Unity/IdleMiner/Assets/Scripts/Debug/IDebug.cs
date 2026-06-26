using ANS.Common.ServiceLocator;

namespace Idler
{
    public interface IDebug : IGameService
    {
        bool IsDebugModeActive { get; }
    }
}