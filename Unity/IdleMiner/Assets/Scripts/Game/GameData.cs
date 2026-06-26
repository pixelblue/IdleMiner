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
        public PropertyDefinition HitRate;
        public PropertyDefinition HitRadius;

        [Header("Resources")]
        public List<ResourceData> rawResources;
        public List<ResourceData> refinedResources;
        public List<ResourceData> constructedResources;

        [Header("Objectives")]
        public ObjectivesConfig objectives;
    }
}
