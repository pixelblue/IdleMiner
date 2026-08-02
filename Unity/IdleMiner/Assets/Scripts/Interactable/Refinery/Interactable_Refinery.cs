using System.Collections.Generic;
using UnityEngine;

namespace Idler
{
    public class Interactable_Refinery : Interactable
    {
        private const int SlotCount = 3;

        private PropertyState slots;
        private PropertyState slotValue;
        private PropertyState slotSpeed;
        private readonly List<ProductionModule> activeModules = new();
        private InteractableUI_Refinery refineryUI;

        protected override void Awake()
        {
            base.Awake();
            var d      = (RefineryData)Data;
            slots      = new PropertyState(d.slots);
            slotValue  = new PropertyState(d.slotValue);
            slotSpeed  = new PropertyState(d.slotSpeed);
            Properties = new[] { slots, slotValue, slotSpeed };
            WirePropertyPrerequisites();

            for (int i = 0; i < SlotCount; i++)
            {
                var module = new ProductionModule(null, 0f);
                module.OnCharged += () => SpawnResource(module.OutputAmount, module.OutputResource);
                activeModules.Add(module);
            }
        }

        private void Update()
        {
            float rate = IsCursorPressed ? GameCtrl.Data.cursorPressedSpeedMultiplier : 1f;
            foreach (var module in activeModules)
            {
                if (!module.IsAssigned) continue;
                var refinedResource = (ResourceData_Refined)module.OutputResource;

                if (module.Progress <= 0f)
                {
                    bool canAfford = refinedResource.HasEnoughRequiredResources();
                    module.SetStarved(!canAfford);
                    if (!canAfford) continue;
                    ResourceCtrl.Add(refinedResource.requiredResource, -refinedResource.requiredAmount);
                }

                module.Tick(Time.deltaTime * rate, slotSpeed.Value);
            }
        }

        protected override void ShowUI()
        {
            base.ShowUI();
            refineryUI = InteractableUICtrl as InteractableUI_Refinery;
            refineryUI?.BindModules(activeModules);
        }

        public override void Save(SaveData data)
        {
            base.Save(data);
            var entry = System.Array.Find(data.interactables, e => e.interactableId == SaveId);
            if (entry == null) return;
            entry.refinerySlotResourceNames = new string[activeModules.Count];
            for (int i = 0; i < activeModules.Count; i++)
                entry.refinerySlotResourceNames[i] = (activeModules[i].OutputResource as ResourceData_Refined)?.name;
        }

        public override void Load(SaveData data)
        {
            base.Load(data);
            var entry = System.Array.Find(data.interactables, e => e.interactableId == SaveId);
            if (entry == null) return;
            for (int i = 0; i < activeModules.Count && i < entry.refinerySlotResourceNames.Length; i++)
            {
                var resource = FindRefinedResourceByName(entry.refinerySlotResourceNames[i]);
                if (resource != null) activeModules[i].Assign(resource, 1f);
                else activeModules[i].Clear();
            }
        }

        public override void Reset()
        {
            base.Reset();
            foreach (var module in activeModules) module.Clear();
        }

        protected override void BumpHitContainer() { }

        private ResourceData_Refined FindRefinedResourceByName(string resourceName)
        {
            if (string.IsNullOrEmpty(resourceName)) return null;
            foreach (var resource in GameCtrl.Data.refinedResources)
                if (resource.name == resourceName) return resource;
            return null;
        }
    }
}
