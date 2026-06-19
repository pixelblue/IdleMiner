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
        [SerializeField] private ResourceData carbonResource;

        private IResourceManager resourceManagerCtrl;

        private void Awake()
        {
            resourceManagerCtrl = ServiceLocator.Current.Get<IResourceManager>();
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
            resourceManagerCtrl.Add(carbonResource, amount);
        }
    }
}