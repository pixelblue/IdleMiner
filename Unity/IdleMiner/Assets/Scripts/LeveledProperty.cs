using System;
using UnityEngine;

namespace Idler
{
    [CreateAssetMenu(fileName = "LeveledProperty", menuName = "Idler/LeveledProperty")]
    public class LeveledProperty : ScriptableObject, ISaveLoad
    {
        public event Action<int> LevelChanged;
        public string propertyName;
        [Multiline] public string propertyInfo;
        public Sprite propertyIcon;
        public ResourceData costResource;
        public int unlockAtLevel;
        public float baseValue;
        public float increment;
        public int   maxLevel;
        public float upgradeCostBase;
        public float upgradeCostMultiplier;

        public int   CurrentLevel { get; private set; }
        public float Value        => GetValue(CurrentLevel);
        public float MaxValue     => GetValue(maxLevel);
        public int   MaxLevel        => maxLevel;
        public float NextUpgradeCost => GetUpgradeCost(CurrentLevel);

        // Returns false if already at max level
        public bool LevelUp()
        {
            if (CurrentLevel >= maxLevel) return false;
            CurrentLevel++;
            LevelChanged?.Invoke(CurrentLevel);
            return true;
        }

        public float GetValue(int level) =>
            baseValue + Mathf.Clamp(level, 0, maxLevel) * increment;

        public float GetUpgradeCost(int level) =>
            upgradeCostBase * Mathf.Pow(upgradeCostMultiplier, level);
        
        public bool HasEnoughResources()
        {
            if (costResource == null) return false;
            return costResource.CurrentAmount >= GetUpgradeCost(CurrentLevel);
        }

        public void Save(SaveData data)
        {
            var entry = System.Array.Find(data.leveledProperties, e => e.propertyName == propertyName);
            if (entry != null) entry.level = CurrentLevel;
        }

        public void Load(SaveData data)
        {
            var entry = System.Array.Find(data.leveledProperties, e => e.propertyName == propertyName);
            if (entry != null) CurrentLevel = System.Math.Clamp(entry.level, 0, maxLevel);
            else Reset();
        }

        public void Reset() => CurrentLevel = 0;
    }
}
