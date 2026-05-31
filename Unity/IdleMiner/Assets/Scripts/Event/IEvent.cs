using System;
using ANS.Common.ServiceLocator;

namespace Idler
{
    public interface IEvent : IGameService
    {
        event Action MiningStarted;
        event Action MiningStopped;
        
        void InvokeMiningStarted();
        void InvokeMiningStopped();
    }
}