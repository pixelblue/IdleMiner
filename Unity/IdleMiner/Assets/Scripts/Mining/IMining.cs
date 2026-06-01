using System;
using ANS.Common.ServiceLocator;

namespace Idler
{
    public interface IMining : IGameService
    {
        float CurrentEnergy { get; }
        float MaxEnergy { get; }

        // Deducts EnergyCostPerHit; returns false if energy is insufficient
        bool ConsumeHit();

        event Action<float, float> OnEnergyChanged; // (current, max)

        void Activate();
        void Deactivate();
    }
}
