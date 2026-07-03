using UnityEngine;

namespace Idler
{
    public enum CostScalingMode { Linear, Exponential, Custom }

    [CreateAssetMenu(fileName = "Property_", menuName = "Idler/PropertyDefinition")]
    public class PropertyDefinition : ScriptableObject
    {
        public string propertyName;
        [Multiline] public string propertyInfo;
        public bool showInUI = true;
        public Sprite propertyIcon;
        public ResourceData costResource;
        public PropertyDefinition unlocksAfter;  // null = always unlocked
        public int unlocksAfterLevel;            // prerequisite must reach this level
        public float baseValue;
        public float increment;
        public int maxLevel;
        public float upgradeCostBase;
        public float upgradeCostMultiplier;
        public CostScalingMode costScalingMode;
        public AnimationCurve upgradeCostCurve = AnimationCurve.Linear(0, 1, 20, 5);

        public float MaxValue => GetValue(maxLevel);

        public float GetValue(int level) =>
            baseValue + Mathf.Clamp(level, 0, maxLevel) * increment;

        public float GetUpgradeCost(int level)
        {
            return costScalingMode switch
            {
                CostScalingMode.Linear      => upgradeCostBase + level * upgradeCostMultiplier,
                CostScalingMode.Exponential => upgradeCostBase * Mathf.Pow(upgradeCostMultiplier, level),
                CostScalingMode.Custom      => upgradeCostBase * upgradeCostCurve.Evaluate(level),
                _                           => upgradeCostBase
            };
        }
    }
}
