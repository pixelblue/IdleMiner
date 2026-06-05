using ANS.Common.ServiceLocator;
using UnityEngine;
using UnityEngine.UI;

namespace Idler
{
    public class Screen_Mining : Screen
    {
        [SerializeField] private Image energySlider;

        private IMap mapCtrl;

        private void OnEnable()
        {
            mapCtrl ??= ServiceLocator.Current.Get<IMap>();
            mapCtrl.MiningCtrl.OnEnergyChanged += OnEnergyChanged;
            OnEnergyChanged(mapCtrl.MiningCtrl.CurrentEnergy, mapCtrl.MiningCtrl.MaxEnergy);
        }

        private void OnDisable()
        {
            mapCtrl.MiningCtrl.OnEnergyChanged -= OnEnergyChanged;
        }

        private void OnEnergyChanged(float current, float max)
        {
            if (energySlider == null) return;
            // Normalise to 0-1 for the slider
            energySlider.fillAmount = max > 0 ? current / max : 0f;
        }
    }
}
