using UnityEngine;

namespace Idler
{
    [CreateAssetMenu(fileName = "Interactable_", menuName = "Idler/Interactables/InteractableData")]
    public class InteractableData : ScriptableObject, ISaveLoad
    {
        public Sprite icon;
        public string interactableName;
        public bool isBuildable = true;
        public Interactable prefab;
        public PropertyDefinition main;

        public int CurrentLevel { get; private set; }

        public bool HasMainProperty => main != null;

        public ResourceData CostResource      => main.costResource;
        public float Value                   => main.GetValue(CurrentLevel);
        public float NextUpgradeCost         => main.GetUpgradeCost(CurrentLevel);

        public bool HasEnoughResources() =>
            main.costResource != null && main.costResource.CurrentAmount >= NextUpgradeCost;

        public bool LevelUp()
        {
            if (CurrentLevel >= main.maxLevel) return false;
            CurrentLevel++;
            return true;
        }

        public void Save(SaveData data)
        {
            var entry = System.Array.Find(data.interactableTypes, e => e.interactableName == name);
            if (entry != null) entry.level = CurrentLevel;
        }

        public void Load(SaveData data)
        {
            if (main == null) return;
            var entry = System.Array.Find(data.interactableTypes, e => e.interactableName == name);
            if (entry != null) CurrentLevel = Mathf.Clamp(entry.level, 0, main.maxLevel);
            else Reset();
        }

        public void Reset() => CurrentLevel = 0;
    }
}