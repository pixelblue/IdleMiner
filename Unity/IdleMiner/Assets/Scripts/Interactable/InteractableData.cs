using UnityEngine;

namespace Idler
{
    [CreateAssetMenu(fileName = "Interactable_", menuName = "Idler/Interactables/InteractableData")]
    public class InteractableData : ScriptableObject
    {
        public string interactableName;
        public bool isBuildable = true;
        public Interactable prefab;
        public PropertyDefinition main;
    }
}