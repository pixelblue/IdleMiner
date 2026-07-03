using System;
using System.Linq;
using UnityEngine;
using UnityEngine.InputSystem;

namespace Idler.DroneSpawner
{
    public class Interactable_DroneSpawner : Interactable
    {
        [field: SerializeField] public Transform droneStartPos;
        [field: SerializeField] public Transform drone2ndStartPos;
        [SerializeField] private DroneController dronePrefab;
        
        private PropertyState drones;
        private PropertyState dronesCapacity;
        private PropertyState dronesSpeed;
        private InteractableUI_DroneSpawner droneUI;

        public ResourceData SelectedResource { get; private set; }

        protected override void Awake()
        {
            base.Awake();
            droneUI         = InteractableUICtrl as InteractableUI_DroneSpawner;
            var d           = (DroneSpawnerData)Data;
            drones          = new PropertyState(d.drones);
            dronesCapacity  = new PropertyState(d.dronesCapacity);
            dronesSpeed     = new PropertyState(d.dronesSpeed);
            Properties      = new[] { drones, dronesCapacity, dronesSpeed };
            WirePropertyPrerequisites();
        }

        private void Update()
        {
            if(Application.isEditor) 
                if(Keyboard.current.dKey.wasPressedThisFrame) AddDrone(1);
        }

        private void AddDrone(int count)
        {
            var newDrone = PoolCtrl.Spawn(dronePrefab.name, droneStartPos.position) as DroneController;
            var randomMinableObject = MapCtrl.MineablesByResource[SelectedResource][UnityEngine.Random.Range(0, MapCtrl.MineablesByResource[SelectedResource].Count)];
            newDrone.Initialize(this, randomMinableObject);
        }

        public void AssignResource(ResourceData resource)
        {
            SelectedResource = resource;
        }

        public override void Save(SaveData data)
        {
            base.Save(data);
            var entry = System.Array.Find(data.interactables, e => e.interactableId == SaveId);
            if (entry != null) entry.selectedResourceName = SelectedResource?.name;
        }

        public override void Load(SaveData data)
        {
            base.Load(data);
            var entry = System.Array.Find(data.interactables, e => e.interactableId == SaveId);
            if (entry == null || string.IsNullOrEmpty(entry.selectedResourceName)) return;
            SelectedResource = FindResourceByName(entry.selectedResourceName);
        }

        public override void Initialize()
        {
            base.Initialize();
            SelectedResource = MapCtrl.MineablesByResource.Keys.First();
        }

        public override void Reset()
        {
            base.Reset();
            SelectedResource = MapCtrl.MineablesByResource.Keys.First();
        }

        protected override void BumpHitContainer() { }

        private ResourceData FindResourceByName(string resourceName)
        {
            foreach (var resource in MapCtrl.MineablesByResource.Keys)
                if (resource.name == resourceName) return resource;
            return MapCtrl.MineablesByResource.First().Key;
        }

        public float GetLoadCapacity() => dronesCapacity.Value;

        public void DroneReturned(float amount)
        {
            SpawnResource(amount, SelectedResource);
        }
    }
}