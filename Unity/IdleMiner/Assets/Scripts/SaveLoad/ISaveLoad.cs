namespace Idler
{
    public interface ISaveLoad
    {
        void Save(SaveData data);
        void Load(SaveData data);
        void Reset();
    }
}