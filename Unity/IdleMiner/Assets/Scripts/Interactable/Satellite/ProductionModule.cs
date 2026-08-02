using System;

namespace Idler
{
    // Pure data/logic — owned by the (always-active) Interactable, not the UI, so progress
    // survives the UI panel being destroyed and recreated on deselect/reselect.
    public class ProductionModule
    {
        public float Progress { get; private set; }
        public ResourceData OutputResource { get; private set; }
        public float OutputAmount { get; private set; }
        public bool IsAssigned => OutputResource != null;
        public bool IsStarved { get; private set; }

        public event Action OnCharged;

        public ProductionModule(ResourceData outputResource, float outputAmount, float startProgress = 0f)
        {
            OutputResource = outputResource;
            OutputAmount = outputAmount;
            Progress = startProgress;
        }

        public void SetStarved(bool starved) => IsStarved = starved;

        public void Assign(ResourceData outputResource, float outputAmount)
        {
            OutputResource = outputResource;
            OutputAmount = outputAmount;
            Progress = 0f;
            IsStarved = false;
        }

        public void Clear()
        {
            OutputResource = null;
            Progress = 0f;
            IsStarved = false;
        }

        // chargeRate is fill-per-second; caller owns it so it stays reactive to upgrades
        public void Tick(float deltaTime, float chargeRate)
        {
            if (!IsAssigned) return;
            Progress += chargeRate * deltaTime;
            if (Progress >= 1f)
            {
                Progress = 0f;
                OnCharged?.Invoke();
            }
        }
    }
}
