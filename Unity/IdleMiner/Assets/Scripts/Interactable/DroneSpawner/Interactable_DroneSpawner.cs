using System;
using System.Collections.Generic;
using System.Linq;
using ANS_Core.Utilities;
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
        private PropertyState dronesSpawnrate;
        private PropertyState dronesCapacity;
        private PropertyState dronesSpeed;
        private InteractableUI_DroneSpawner droneUI;
        private float timer;

        public ResourceData SelectedResource { get; private set; }
        public List<DroneController> FlyingDrones { get; private set; } = new List<DroneController>();

        protected override void Awake()
        {
            base.Awake();
            droneUI         = InteractableUICtrl as InteractableUI_DroneSpawner;
            var d           = (DroneSpawnerData)Data;
            drones          = new PropertyState(d.drones);
            dronesSpawnrate = new PropertyState(d.dronesSpawnRate);
            dronesCapacity  = new PropertyState(d.dronesCapacity);
            dronesSpeed     = new PropertyState(d.dronesSpeed);
            Properties      = new[] { drones, dronesSpawnrate, dronesCapacity, dronesSpeed };
            WirePropertyPrerequisites();
        }

        protected override void OnEnable()
        {
            base.OnEnable();
        }
        
        protected override void OnDisable()
        {
            base.OnDisable();
        }
        
        public override void Initialize()
        {
            base.Initialize();
            // only fall back to a default when Load()/Reset() didn't already pick one
            SelectedResource ??= MapCtrl.MineablesByResource.Keys.First();
            timer = 0.0f;
        }

        private void Update()
        {
            timer += Time.deltaTime;
            if (timer >= dronesSpawnrate.Value && FlyingDrones.Count < drones.Value)
            {
                AddDrone(1);
                timer = 0.0f;
            }
            if(Application.isEditor) 
                if(Keyboard.current.dKey.wasPressedThisFrame) AddDrone(1);
        }

        private void AddDrone(int count)
        {
            var newDrone = PoolCtrl.Spawn(dronePrefab.name, droneStartPos.position) as DroneController;
            var randomMinableObject = MapCtrl.MineablesByResource[SelectedResource][UnityEngine.Random.Range(0, MapCtrl.MineablesByResource[SelectedResource].Count)];
            newDrone.Initialize(this, randomMinableObject);
            FlyingDrones.Add(newDrone);
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

        public void DroneReturned(DroneController drone, float amount)
        {
            SpawnResource(amount, SelectedResource);
            PoolCtrl.Release(Util.GetNameWithoutClone(drone.gameObject.name), drone);
            FlyingDrones.Remove(drone);
        }

        public float GetDroneSpeed()
        {
            return dronesSpeed.Value;
        }
    }
}