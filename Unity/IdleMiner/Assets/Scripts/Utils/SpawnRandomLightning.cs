using System;
using ANS.Common;
using ANS.Common.ServiceLocator;
using UnityEngine;
using Random = UnityEngine.Random;

namespace Idler
{
    public class SpawnRandomLightning : MonoBehaviour
    {
        [SerializeField] private LightningController lightningPrefab;
        [SerializeField] private Vector2 minMaxRadius;
        
        private IPool poolCtrl;

        private void Awake()
        {
            poolCtrl = ServiceLocator.Current.Get<IPool>();
        }

        public void Spawn()
        {
            var lightningCtrl = poolCtrl.Spawn(lightningPrefab.name, transform.position) as LightningController;
            var p1 = transform.position;
            
            var radius = Random.Range(minMaxRadius.x, minMaxRadius.y);
            var p2 = Random.onUnitCircle * radius;
            
            
        }
    }
}
