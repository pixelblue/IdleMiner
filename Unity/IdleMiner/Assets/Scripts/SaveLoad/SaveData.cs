using System;

namespace Idler
{
    [Serializable]
    public class SaveData
    {
        public int saveVersion = 0;
        public int currentLevel = 0;
        public ObjectiveSaveEntry[] objectives = Array.Empty<ObjectiveSaveEntry>();
        public ResourceSaveEntry[] resources = Array.Empty<ResourceSaveEntry>();
    }

    [Serializable]
    public class ObjectiveSaveEntry
    {
        public string objectiveName;
        public float currentAmount;
    }

    [Serializable]
    public class ResourceSaveEntry
    {
        public string resourceName;
        public float currentAmount;
    }
}
