using System;
using System.Collections.Generic;
using UnityEngine;

namespace Idler
{
    public class InteractableUI_Satellite : InteractableUI
    {
        [field: SerializeField] public Transform SlotContainer { get; private set; }
        [SerializeField] private UI_ProductionModule productionModuleUIPrefab;

        private readonly List<ProductionModule> activeModules = new();

        protected override void Awake()
        {
            base.Awake();
            foreach (Transform trans in SlotContainer)
            {
                Destroy(trans.gameObject);
            }
        }

        // Adds modules up to targetCount. Safe to call multiple times — only creates the delta.
        public void SyncModules(int targetCount, SatelliteData data, Action<float, ResourceData> onCharged)
        {
            int toAdd = targetCount - activeModules.Count;
            for (int i = 0; i < toAdd; i++)
            {
                var slotUI = Instantiate(productionModuleUIPrefab, SlotContainer);
                slotUI.Initialize();
                var module = new ProductionModule(data.outputResource, data.outputAmount, slotUI, UnityEngine.Random.value);
                module.OnCharged += () => onCharged(module.OutputAmount, module.OutputResource);
                activeModules.Add(module);
            }
        }

        public void TickModules(float deltaTime, float chargeRate)
        {
            foreach (var module in activeModules)
                module.Tick(deltaTime, chargeRate);
        }
    }
}
