using ANS.Common.ServiceLocator;
using UnityEngine;
using UnityEngine.UI;

namespace Idler
{
    public class Screen_Mining : Screen
    {
        [SerializeField] private Slider energySlider;

        private IMining miningCtrl;

        private void OnEnable()
        {
            miningCtrl ??= ServiceLocator.Current.Get<IMining>();
            miningCtrl.OnEnergyChanged += OnEnergyChanged;
            OnEnergyChanged(miningCtrl.CurrentEnergy, miningCtrl.MaxEnergy);
        }

        private void OnDisable()
        {
            miningCtrl.OnEnergyChanged -= OnEnergyChanged;
        }

        private void OnEnergyChanged(float current, float max)
        {
            if (energySlider == null) return;
            // Normalise to 0-1 for the slider
            energySlider.value = max > 0 ? current / max : 0f;
        }
    }
}
