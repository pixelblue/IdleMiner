using System;
using ANS.Common.ServiceLocator;
using ANS_Core.Utilities;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

namespace Idler
{
    public class UI_ResourceElement : MonoBehaviour
    {
        [SerializeField] private TMP_Text resourceAmountText;
        [SerializeField] private Image resourceIcon;

        public ResourceData ResourceData { get; private set; }
        private IEventManager eventManagerCtrl;
        private IResourceManager resourceCtrl;
        
        private void Awake()
        {
            eventManagerCtrl = ServiceLocator.Current.Get<IEventManager>();
            resourceCtrl = ServiceLocator.Current.Get<IResourceManager>();
        }

        private void OnEnable()
        {
            eventManagerCtrl.ResourceChanged += OnResourceChanged;
        }

        private void OnDisable()
        {
            eventManagerCtrl.ResourceChanged -= OnResourceChanged;
        }

        public void Initialize(ResourceData resourceData, float amount)
        {
            this.ResourceData = resourceData;
            resourceCtrl = ServiceLocator.Current.Get<IResourceManager>();
            
            resourceIcon.sprite = resourceData.icon;
            UpdateValues();
        }

        private void UpdateValues()
        {
            resourceAmountText.text = Util.FormatNumber(resourceCtrl.Get(ResourceData));
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