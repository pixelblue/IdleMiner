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
        public PropertyDefinition unlocksAfter;  // null = always unlocked
        public int unlocksAfterLevel;            // prerequisite must reach this level
        public float baseValue;
        public float increment;
        public int maxLevel;
        public float upgradeCostBase;
        public float upgradeCostMultiplier;
        
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
