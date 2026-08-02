using System.Collections.Generic;
using UnityEngine;

namespace Idler
{
    [CreateAssetMenu(fileName = "GameData", menuName = "Idler/GameData", order = 0)]
    public class GameData : ScriptableObject
    {
        [Header("Interactables")]
        public InteractableData[] allInteractables;

        [Header("Global Properties")]
        public float cursorPressedSpeedMultiplier = 1.5f;
        public PropertyDefinition HitRate;

        [Header("Resources")]
        public List<ResourceData> rawResources;
        public List<ResourceData_Refined> refinedResources;
        public List<ResourceData> constructedResources;

        [Header("Objectives")]
        public ObjectivesConfig objectives;

        [Header("Colors")] 
        public Color missingResourceAmountButtonColor;
        public Color hasEnoughResourcesButtonColor;
    }
}
