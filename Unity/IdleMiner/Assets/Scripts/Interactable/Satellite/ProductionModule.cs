using System;
using Unity.VisualScripting.FullSerializer;
using UnityEngine;

namespace Idler
{
    public class ProductionModule
    {
        public float Progress { get; private set; }
        public ResourceData OutputResource { get; }
        public float OutputAmount { get; }
        public UI_ProductionModule UI { get; }

        public event Action OnCharged;

        public ProductionModule(ResourceData outputResource, float outputAmount, UI_ProductionModule ui, float startProgress = 0f)
        {
            OutputResource = outputResource;
            OutputAmount = outputAmount;
            UI = ui;
            Progress = startProgress;
        }

        // chargeRate is fill-per-second; caller owns it so it stays reactive to upgrades
        public void Tick(float deltaTime, float chargeRate)
        {
            Progress += chargeRate * deltaTime;
            if (Progress >= 1f)
            {
                Progress = 0f;
                UI.SetProgress(0f);
                OnCharged?.Invoke();
                return;
            }
            UI.SetProgress(Progress);
        }
    }
}
