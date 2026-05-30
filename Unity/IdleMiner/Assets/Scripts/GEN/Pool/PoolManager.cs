using System;
using System.Collections.Generic;
using Brick;
using UnityEngine;

namespace ANS.Common
{
    public class PoolManager : MonoBehaviour, IPool
    {
        [Serializable]
        public class PoolEntry
        {
            public GameObject prefab;
            public int initialSize = 5;
        }

        [Serializable]
        public class PoolCategory
        {
            public string category;
            public PoolEntry[] entries;
        }

        [SerializeField] private PoolCategory[] poolCategories;

        private readonly Dictionary<string, IObjectPool> pools = new();
        private readonly Dictionary<string, Type> prefabTypes = new();

        public void CreatePools()
        {
            foreach (var category in poolCategories)
            foreach (var entry in category.entries)
            {
                if (entry.prefab == null) continue;
                TryAddPoolDefinition(entry.prefab.name, entry.prefab, entry.initialSize);
            }
        }

        public void ClearPoolsAndDefinitions()
        {
            pools.Clear();
            prefabTypes.Clear();
        }

        // -------- SAFE FACTORY (NO REFLECTION) --------

        private IObjectPool CreateTypedPool(Component comp, string poolName, int initialSize)
        {
            // Try LightningController
            var lightningObj = comp.GetComponent<LightningController>();
            if (lightningObj != null)
                return new ObjectPool<LightningController>(lightningObj, poolName, initialSize, this.transform);
            
            // Try PickupController
            var pickupObj = comp.GetComponent<PickupController>();
            if (pickupObj != null)
                return new ObjectPool<PickupController>(pickupObj, poolName, initialSize, this.transform);
            
            // Try Projectile
            var projectileObj = comp.GetComponent<Projectile>();
            if (projectileObj != null)
                return new ObjectPool<Projectile>(projectileObj, poolName, initialSize, this.transform);
            
            // Try BulletController
            var bulletObj = comp.GetComponent<Bullet>();
            if (bulletObj != null)
                return new ObjectPool<Bullet>(bulletObj, poolName, initialSize, this.transform);
            
            // Try BombController
            var bombObj = comp.GetComponent<BombController>();
            if (bombObj != null)
                return new ObjectPool<BombController>(bombObj, poolName, initialSize, this.transform);
            
            // Try HealthBarController
            var healthBarObj = comp.GetComponent<HealthBarController>();
            if (healthBarObj != null)
                return new ObjectPool<HealthBarController>(healthBarObj, poolName, initialSize, this.transform);
            
            // Try HitableObject (covers all subclasses: Enemy, Bumper, Pickup, etc.)
            var hitableObj = comp.GetComponent<HitableObject>();
            if (hitableObj != null)
                return new ObjectPool<HitableObject>(hitableObj, poolName, initialSize, this.transform);
            
            // Try FlyingScoreController
            var flyingScoreObj = comp.GetComponent<FlyingScoreController>();
            if (flyingScoreObj != null)
                return new ObjectPool<FlyingScoreController>(flyingScoreObj, poolName, initialSize, this.transform);
            
            // Fallback: allow Transform pooling
            var tr = comp.GetComponent<Transform>();
            if (tr != null)
                return new ObjectPool<Transform>(tr, poolName, initialSize, this.transform);

            Debug.LogError($"PoolManager: '{poolName}' has no supported component to pool. Prefab: {comp.name}");
            return null;
        }


        // --------------- IPool IMPLEMENTATION ----------------

        public Component Spawn(string name, Vector3 position)
        {
            if (!pools.TryGetValue(name, out var pool))
            {
                Debug.LogError($"PoolManager: No pool named '{name}'.");
                return null;
            }

            return pool.Get(position);
        }

        public void Release(string name, Component instance)
        {
            if (instance == null)
            {
                Debug.Log("PoolManager.Release called with null instance.");
                return;
            }

            if (!pools.TryGetValue(name, out var pool))
            {
                Debug.Log($"PoolManager: No pool named '{name}'");
                return;
            }

            pool.Release(instance);
        }

        // -------------- DYNAMIC POOL REGISTRATION ----------------

        public bool TryAddPoolDefinition(string name, GameObject prefab, int initialSize = 5)
        {
            if (string.IsNullOrWhiteSpace(name) || prefab == null)
                return false;

            name = NormalizeName(name);
            
            if (pools.ContainsKey(name))
                return false;

            Component comp = prefab.GetComponent<Component>();
            if (comp == null)
                return false;

            // Safe factory again
            IObjectPool pool = CreateTypedPool(comp, name, initialSize);
            if (pool == null)
            {
                Debug.LogError($"PoolManager: Cannot dynamically create pool for unsupported type '{comp.GetType()}' for poolName '{name}'.");
                return false;
            }

            pools[name] = pool;
            prefabTypes[name] = comp.GetType();
            return true;
        }

        public bool PoolExists(string name) => pools.ContainsKey(name);

        public Type GetPrefabType(string name)
        {
            prefabTypes.TryGetValue(name, out var t);
            return t;
        }
        
        private string NormalizeName(string name)
        {
            if (name.EndsWith("(Clone)"))
                name = name.Replace("(Clone)", "");

            return name.Trim();
        }
    }
}
