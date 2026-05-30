using ANS.Common.ServiceLocator;

namespace GEN.InputDevice
{
    public interface ITouch : IGameService
    {
        public bool IsThumbDown { get; } 
    }
}