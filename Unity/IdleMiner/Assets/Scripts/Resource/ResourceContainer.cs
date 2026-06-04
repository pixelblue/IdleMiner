using System.Collections.Generic;
using UnityEngine;

namespace Idler
{
    [CreateAssetMenu(fileName = "ResourceContainer", menuName = "Idler/ResourceContainer", order = 1)]
    public class ResourceContainer : ScriptableObject
    {
        public List<ResourceData> allResources;
    }
}