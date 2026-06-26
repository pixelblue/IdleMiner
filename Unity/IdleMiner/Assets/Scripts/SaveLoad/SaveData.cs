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
        public PropertySaveEntry[] globalProperties = Array.Empty<PropertySaveEntry>();
        public InteractableSaveEntry[] interactables = Array.Empty<InteractableSaveEntry>();
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

    [Serializable]
    public class PropertySaveEntry
    {
        public string propertyName;
        public int level;
    }

    [Serializable]
    public class InteractableSaveEntry
    {
        public string interactableId;
        public PropertySaveEntry[] properties = System.Array.Empty<PropertySaveEntry>();
    }
}
