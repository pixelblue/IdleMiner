using System;
using ANS.Common.ServiceLocator;

namespace Idler
{
    public interface IMining : IGameService
    {
        ResourceController ResourcePrefab { get; }
        float CurrentEnergy { get; }
        float MaxEnergy { get; }

        // Deducts EnergyCostPerHit; returns false if energy is insufficient
        void ConsumeHit();

        event Action<float, float> OnEnergyChanged; // (current, max)

        void Activate();
        void Deactivate();
    }
}
