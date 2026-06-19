using System.Collections.Generic;
using UnityEngine;

namespace Idler
{
    [CreateAssetMenu(fileName = "InteractableData", menuName = "Idler/Interactables/InteractableData")]
    public class InteractableData : ScriptableObject
    {
        public string interactableName;
        public List<LeveledProperty> allProperties;
    }
}