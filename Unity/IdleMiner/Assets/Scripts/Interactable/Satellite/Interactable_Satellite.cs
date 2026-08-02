using System.Collections.Generic;
using UnityEngine;

namespace Idler
{
    public class Interactable_Satellite : Interactable
    {
        private PropertyState slots;
        private PropertyState slotValue;
        private PropertyState slotSpeed;
        private readonly List<ProductionModule> activeModules = new();
        private InteractableUI_Satellite satelliteUI;

        protected override void Awake()
        {
            base.Awake();
            var d      = (SatelliteData)Data;
            slots      = new PropertyState(d.slots);
            slotValue  = new PropertyState(d.slotValue);
            slotSpeed  = new PropertyState(d.slotSpeed);
            Properties = new[] { slots, slotValue, slotSpeed };
            WirePropertyPrerequisites();
        }

        protected override void OnEnable()
        {
            if (slots != null) slots.LevelChanged += OnSlotLevelsChanges;
        }

        protected override void OnDisable()
        {
            if (slots != null) slots.LevelChanged -= OnSlotLevelsChanges;
        }

        private void Update()
        {
            float rate = IsCursorPressed ? GameCtrl.Data.cursorPressedSpeedMultiplier : 1f;
            foreach (var module in activeModules)
                module.Tick(Time.deltaTime * rate, slotSpeed.Value);
        }

        private void OnSlotLevelsChanges(int level)
        {
            SyncModuleCount(Mathf.RoundToInt(slots.Value));
            satelliteUI?.BindModules(activeModules);
        }

        // Adds modules up to targetCount. Safe to call multiple times — only creates the delta.
        private void SyncModuleCount(int targetCount)
        {
            var d = (SatelliteData)Data;
            int toAdd = targetCount - activeModules.Count;
            for (int i = 0; i < toAdd; i++)
            {
                var module = new ProductionModule(d.outputResource, d.outputAmount, Random.value);
                module.OnCharged += () => SpawnResource(module.OutputAmount, module.OutputResource);
                activeModules.Add(module);
            }
        }

        protected override void ShowUI()
        {
            base.ShowUI();
            satelliteUI = InteractableUICtrl as InteractableUI_Satellite;
            SyncModuleCount(Mathf.RoundToInt(slots.Value));
            satelliteUI?.BindModules(activeModules);
        }

        public override void Load(SaveData data)
        {
            base.Load(data);
            SyncModuleCount(Mathf.RoundToInt(slots.Value));
        }

        protected override void BumpHitContainer() { }
    }
}
