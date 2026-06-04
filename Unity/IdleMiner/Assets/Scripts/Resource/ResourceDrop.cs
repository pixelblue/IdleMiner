using System;
using UnityEngine;

namespace Idler
{
    [Serializable]
    public class ResourceDrop
    {
        public ResourceData resource;
        [Range(0f, 1f)] public float chance;
        public float minAmount;
        public float maxAmount;
    }
}
