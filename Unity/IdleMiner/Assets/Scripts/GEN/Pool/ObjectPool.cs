using System.Collections.Generic;
using UnityEngine;

namespace ANS.Common
{
    public class ObjectPool<T> : IObjectPool where T : Component
    {
        private readonly T prefab;
        private readonly Transform parent;
        private readonly Queue<T> objects;
        private readonly string poolName;

        public ObjectPool(T prefab, string poolName, int initialSize, Transform parent = null)
        {
            this.prefab = prefab;
            this.parent = parent;
            this.poolName = poolName;

            objects = new Queue<T>(initialSize);
            for (int i = 0; i < initialSize; i++)
                CreateNewInstance();
        }

        private T CreateNewInstance()
        {
            T obj = GameObject.Instantiate(prefab, parent);

            var pooled = obj.GetComponent<PooledObject>();
            if (pooled == null)
                pooled = obj.gameObject.AddComponent<PooledObject>();

            pooled.poolName = poolName;
            pooled.component = obj;

            obj.gameObject.SetActive(false);
            objects.Enqueue(obj);
            return obj;
        }

        public T GetTyped(Vector3 position)
        {
            if (objects.Count == 0)
                CreateNewInstance();

            T obj = objects.Dequeue();
            obj.gameObject.SetActive(true);
            obj.transform.position = position;
            return obj;
        }

        public void ReleaseTyped(T obj)
        {
            obj.gameObject.SetActive(false);
            obj.transform.SetParent(parent);
            objects.Enqueue(obj);
        }

        // Interface implementation
        Component IObjectPool.Get(Vector3 position) => GetTyped(position);
        void IObjectPool.Release(Component instance) => ReleaseTyped((T)instance);
    }
}