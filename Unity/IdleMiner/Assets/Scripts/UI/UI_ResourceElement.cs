using System;
using ANS.Common.ServiceLocator;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

namespace Idler
{
    public class UI_ResourceElement : MonoBehaviour
    {
        [SerializeField] private TMP_Text resourceNameText;
        [SerializeField] private TMP_Text resourceAmountText;
        [SerializeField] private Image resourceIcon;

        public ResourceData ResourceData { get; private set; }
        private IEvent eventCtrl;
        private IResource resourceCtrl;
        
        private void Awake()
        {
            eventCtrl = ServiceLocator.Current.Get<IEvent>();
            resourceCtrl = ServiceLocator.Current.Get<IResource>();
        }

        private void OnEnable()
        {
            eventCtrl.ResourceChanged += OnResourceChanged;
        }

        private void OnDisable()
        {
            eventCtrl.ResourceChanged -= OnResourceChanged;
        }

        public void Initialize(ResourceData resourceData, float amount)
        {
            this.ResourceData = resourceData;

            resourceIcon.sprite = resourceData.icon;
            resourceNameText.text = resourceData.resourceName;
            UpdateValues();
        }

        private void UpdateValues()
        {
            resourceAmountText.text = resourceCtrl.Get(ResourceData).ToString();
        }

        private void OnResourceChanged(ResourceData resourceData, float amount)
        {
            if (this.ResourceData == resourceData)
            {
                UpdateValues();
            }
        }
    }
}