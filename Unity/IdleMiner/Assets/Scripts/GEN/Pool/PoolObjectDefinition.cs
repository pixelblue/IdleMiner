using System;
using UnityEngine;

namespace ANS.Common
{
    [Serializable]
    public class PoolObjectDefinition<T> : PoolObjectDefinitionBase where T : Component
    {
        public T prefab;

        public override GameObject Prefab => prefab.gameObject;
        public override Type ComponentType => typeof(T);
    }


}