using ANS.Common.ServiceLocator;

namespace Idler
{
    public interface ISurface : IGameService
    {
        void Activate();
        void Deactivate();
    }
}
