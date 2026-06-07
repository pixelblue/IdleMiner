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

        [Header("Raw Ore")]
        public ResourceData carbon;
        public ResourceData gold;
        public ResourceData copper;

        [Header("Refined Metal")]
        public ResourceData steel;
        public ResourceData bronze;

        [Header("Constructed")]
        public ResourceData droneCore;

    }
}