using System;
using UnityEngine;

namespace Idler
{
    public class PropertyState
    {
        public event Action<int> LevelChanged;

        public PropertyDefinition Definition { get; private set; }
        public int CurrentLevel { get; private set; }

        public float Value           => Definition.GetValue(CurrentLevel);
        public float MaxValue        => Definition.MaxValue;
        public int   MaxLevel        => Definition.maxLevel;
        public float NextUpgradeCost => Definition.GetUpgradeCost(CurrentLevel);

        // Pass-throughs so UI code stays concise
        public string propertyName  => Definition.propertyName;
        public string propertyInfo  => Definition.propertyInfo;
        public Sprite propertyIcon  => Definition.propertyIcon;
        public ResourceData costResource => Definition.costResource;
        public int unlockAtLevel    => Definition.unlockAtLevel;

        public PropertyState(PropertyDefinition definition)
        {
            Definition = definition;
        }

        public bool LevelUp()
        {
            if (CurrentLevel >= Definition.maxLevel) return false;
            CurrentLevel++;
            LevelChanged?.Invoke(CurrentLevel);
            return true;
        }

        public float GetValue(int level) => Definition.GetValue(level);

        public bool HasEnoughResources() =>
            Definition.costResource != null &&
            Definition.costResource.CurrentAmount >= NextUpgradeCost;

        public void Save(LeveledPropertySaveEntry[] entries)
        {
            var entry = Array.Find(entries, e => e.propertyName == Definition.propertyName);
            if (entry != null) entry.level = CurrentLevel;
        }

        public void Load(LeveledPropertySaveEntry[] entries)
        {
            var entry = Array.Find(entries, e => e.propertyName == Definition.propertyName);
            if (entry != null) CurrentLevel = Math.Clamp(entry.level, 0, Definition.maxLevel);
            else Reset();
        }

        public void Reset() => CurrentLevel = 0;
    }
}
