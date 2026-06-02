using System;
using ANS.Common.ServiceLocator;
using UnityEngine;

namespace Idler
{
    public class MiningController : MonoBehaviour, IMining
    {
        public float CurrentEnergy { get; private set; }
        public float MaxEnergy => gameData.energy.Value;

        public event Action<float, float> OnEnergyChanged;

        private IEvent eventCtrl;
        private ICursor cursor;
        private GameData gameData;

        private void Awake()
        {
            eventCtrl = ServiceLocator.Current.Get<IEvent>();
            cursor    = ServiceLocator.Current.Get<ICursor>();
            gameData  = ServiceLocator.Current.Get<IGame>().Data;
        }

        private void OnEnable()
        {
            eventCtrl.MiningStarted += Activate;
            eventCtrl.MiningStopped += Deactivate;
        }

        private void OnDisable()
        {
            eventCtrl.MiningStarted -= Activate;
            eventCtrl.MiningStopped -= Deactivate;
        }

        public void Activate()
        {
            RefillEnergy();
            cursor.Activate();
        }

        public void Deactivate()
        {
            cursor.Deactivate();
        }

        public bool ConsumeHit()
        {
            var cost = gameData.EnergyCostPerHit.Value;
            if (CurrentEnergy < cost) return false;
            CurrentEnergy -= cost;
            OnEnergyChanged?.Invoke(CurrentEnergy, MaxEnergy);
            return true;
        }

        private void RefillEnergy()
        {
            CurrentEnergy = MaxEnergy;
            OnEnergyChanged?.Invoke(CurrentEnergy, MaxEnergy);
        }
    }
}
