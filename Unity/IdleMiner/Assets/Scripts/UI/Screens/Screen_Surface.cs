using System;
using UnityEngine;
using UnityEngine.UI;

namespace Idler
{
    public class Screen_Surface : Screen
    {
        [SerializeField] private Button mininButton;

        private void OnEnable()
        {
            mininButton.onClick.AddListener(OnMiningButtonClicked);
        }

        private void OnDisable()
        {
            mininButton.onClick.RemoveListener(OnMiningButtonClicked);
        }

        private void OnMiningButtonClicked()
        {
            eventCtrl.InvokeMiningStarted();
        }
    }
}