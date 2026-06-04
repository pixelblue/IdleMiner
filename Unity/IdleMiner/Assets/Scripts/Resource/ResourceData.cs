using Sirenix.OdinInspector;
using UnityEngine;

namespace Idler
{
    [CreateAssetMenu(fileName = "Resource", menuName = "Idler/Resource")]
    public class ResourceData : ScriptableObject
    {
        public string resourceName;
        public Sprite icon;
        public float value = 1.0f;

        [ReadOnly] public float amount;
    }
}