using UnityEngine;

namespace Idler
{
    [CreateAssetMenu(fileName = "Property_", menuName = "Idler/PropertyDefinition")]
    public class PropertyDefinition : ScriptableObject
    {
        public string propertyName;
        [Multiline] public string propertyInfo;
        public Sprite propertyIcon;
        public ResourceData costResource;
        public int unlockAtLevel;
        public float baseValue;
        public float increment;
        public int maxLevel;
        public float upgradeCostBase;
        public float upgradeCostMultiplier;
        // Multiplies the base exponential cost — x is normalised level (0–1), y is the multiplier.
        // Leave as a flat line at y=1 for pure exponential scaling.
        public AnimationCurve upgradeCostCurve = AnimationCurve.Linear(0f, 1f, 1f, 1f);

        public float MaxValue => GetValue(maxLevel);

        public float GetValue(int level) =>
            baseValue + Mathf.Clamp(level, 0, maxLevel) * increment;

        public float GetUpgradeCost(int level)
        {
            float normalized = maxLevel > 0 ? (float)level / maxLevel : 0f;
            return upgradeCostBase * Mathf.Pow(upgradeCostMultiplier, level) * upgradeCostCurve.Evaluate(normalized);
        }
    }
}
