using System.Collections.Generic;
using ANS.Common.ServiceLocator;

namespace Idler
{
    public interface ICursor : IGameService
    {
        void Activate();
        void Deactivate();
    }
}
