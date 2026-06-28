using ANS.Common.ServiceLocator;
using DG.Tweening;
using UnityEngine;

namespace Idler
{
    public class Interactable_Minable : Interactable
    {
        [SerializeField] private ResourcePool resourcePool;
        
        private ICamera camCtrl;
        private IResourceManager resourceManagerCtrl;

        private PropertyState hitValue;
        private PropertyState drones;
        private PropertyState droneValue;
        
        protected override void Awake()
        {
            base.Awake();
            camCtrl      = ServiceLocator.Current.Get<ICamera>();
            resourceManagerCtrl = ServiceLocator.Current.Get<IResourceManager>();
            
            var d       = (MinableData)Data;
            hitValue        = new PropertyState(d.hitValue);
            drones = new PropertyState(d.drones);
            droneValue     = new PropertyState(d.droneValue);
            Properties      = new[] { hitValue, drones, droneValue };
            WirePropertyPrerequisites();
        }

        protected override void OnEnable()
        {
            base.OnEnable();
        }
        
        private void Update()
        {
        }

        public override void OnCursorHit(CursorController cursor)
        {
            base.OnCursorHit(cursor);
            
            resourcePool.Drop((resource, amount) =>
            {
                SpawnResource(hitValue.Value, resource);    
            });
        }
    }
}