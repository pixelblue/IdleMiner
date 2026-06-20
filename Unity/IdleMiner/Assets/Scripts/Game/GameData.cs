using System.Collections.Generic;
using UnityEngine;

namespace Idler
{
    [CreateAssetMenu(fileName = "GameData", menuName = "Idler/GameData", order = 0)]
    public class GameData : ScriptableObject
    {
        [Header("Properties")]
        public LeveledProperty energy;
        public LeveledProperty EnergyCostPerHit;
        public LeveledProperty HitRate;
        public LeveledProperty HitRadius;
        public LeveledProperty HitValue;
        public LeveledProperty BaseStationBots;

        [Header("Resources")]
        public List<ResourceData> rawResources;
        public List<ResourceData> refinedResources;
        public List<ResourceData> constructedResources;

        [Header("Objectives")]
        public ObjectivesConfig objectives;

        public LeveledProperty[] AllProperties() =>
            new[] { energy, EnergyCostPerHit, HitRate, HitRadius, HitValue };
    }
}
