using System.Collections.Generic;
using UnityEngine;

namespace Idler
{
    [CreateAssetMenu(fileName = "GameData", menuName = "Idler/GameData", order = 0)]
    public class GameData : ScriptableObject
    {
        public LeveledProperty energy;
        public LeveledProperty EnergyCostPerHit;
        public LeveledProperty HitRate;
        public LeveledProperty HitRadius;

        public List<ResourceData> rawResources;
        public List<ResourceData> refinedResources;
        public List<ResourceData> constructedResources;

        public ObjectivesConfig objectives;
    }
}
