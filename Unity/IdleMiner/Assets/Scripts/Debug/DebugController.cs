using System;
using ANS.Common.ServiceLocator;
using UnityEngine;
using UnityEngine.UI;

namespace Idler
{
    public class DebugController : MonoBehaviour, IDebug
    {
        [SerializeField] private Button showDebugPanelButton;
        [SerializeField] private GameObject debugPanel;

        private IResource resourceCtrl;

        private void Awake()
        {
            resourceCtrl = ServiceLocator.Current.Get<IResource>();
        }

        private void OnEnable()
        {
            showDebugPanelButton.onClick.AddListener(ToggleDebugPanel);
        }
        
        private void OnDisable()
        {
            showDebugPanelButton.onClick.RemoveListener(ToggleDebugPanel);
        }

        private void ToggleDebugPanel()
        {
            debugPanel.SetActive(!debugPanel.activeSelf);
        }
        
        public void AddCarbon(float amount)
        {
            resourceCtrl.Add(Constants.RawOre.Carbon, amount);
            //resourceCtrl.Add(ResourceData.Carbon, amount);
        }
    }
}