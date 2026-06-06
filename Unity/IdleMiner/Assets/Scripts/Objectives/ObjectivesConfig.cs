using UnityEngine;

namespace Idler
{
    [CreateAssetMenu(fileName = "ObjectivesConfig", menuName = "Idler/Objectives/Config")]
    public class ObjectivesConfig : ScriptableObject
    {
        public ObjectiveLevelData[] levels;
    }
}
