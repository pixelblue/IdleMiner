using System;
using UnityEngine;
using Random = UnityEngine.Random;

namespace Idler
{
    [CreateAssetMenu(fileName = "ResourcePool", menuName = "Idler/ResourcePool")]
    public class ResourcePool : ScriptableObject
    {
        [SerializeField] private ResourceDrop[] drops;

        public void Roll(Action<ResourceData, float> onDrop)
        {
            foreach (var drop in drops)
            {
                if (Random.value <= drop.chance)
                    onDrop(drop.resource, Random.Range(drop.minAmount, drop.maxAmount));
            }
        }
    }
}