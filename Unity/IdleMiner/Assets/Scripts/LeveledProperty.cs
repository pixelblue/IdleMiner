using UnityEngine;

namespace Idler
{
    [CreateAssetMenu(fileName = "LeveledProperty", menuName = "Idler/LeveledProperty")]
    public class LeveledProperty : ScriptableObject
    {
        [SerializeField] private float baseValue;
        [SerializeField] private float increment;
        [SerializeField] private int   maxLevel;
        [SerializeField] private float upgradeCostBase;
        [SerializeField] private float upgradeCostMultiplier;

        public int   CurrentLevel    { get; private set; }
        public int   MaxLevel        => maxLevel;
        public float Value           => GetValue(CurrentLevel);
        public float NextUpgradeCost => GetUpgradeCost(CurrentLevel);

        // Returns false if already at max level
        public bool LevelUp()
        {
            if (CurrentLevel >= maxLevel) return false;
            CurrentLevel++;
            return true;
        }

        public float GetValue(int level) =>
            baseValue + Mathf.Clamp(level, 0, maxLevel) * increment;

        public float GetUpgradeCost(int level) =>
            upgradeCostBase * Mathf.Pow(upgradeCostMultiplier, level);
    }
}
