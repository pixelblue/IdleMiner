using System;
using UnityEngine;

namespace ANS.Common
{
    public abstract class PoolObjectDefinitionBase
    {
        public string name;
        public int initialSize = 2;

        public abstract GameObject Prefab { get; }
        public abstract Type ComponentType { get; }
    }

}