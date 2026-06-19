using ANS.Common.ServiceLocator;

namespace Idler
{
    public interface ISaveLoadManager : IGameService
    {
        SaveData Data { get; }
        void SaveAll();
        void LoadAll();
        void ResetAll();
    }
}