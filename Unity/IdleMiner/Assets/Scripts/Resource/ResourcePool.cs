using System;
using UnityEngine;
using Random = UnityEngine.Random;

namespace Idler
{
    [CreateAssetMenu(fileName = "ResourcePool", menuName = "Idler/ResourcePool")]
    public class ResourcePool : ScriptableObject
    {
        [SerializeField] private ResourceDrop[] drops;

        public void Drop(Action<ResourceData, float> onDrop)
        {
            foreach (var drop in drops)
            {
                if (Random.value <= drop.chance)
                    onDrop(drop.resource, drop.resource.value);
            }
        }
    }
}