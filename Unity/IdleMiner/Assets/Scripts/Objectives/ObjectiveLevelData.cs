using UnityEngine;

namespace Idler
{
    [CreateAssetMenu(fileName = "ObjectiveLevel", menuName = "Idler/Objectives/Level")]
    public class ObjectiveLevelData : ScriptableObject
    {
        [Header("Max 3 objectives per level")]
        public ObjectiveData[] objectives;
    }
}
