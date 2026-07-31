using System;
using ANS.Common.ServiceLocator;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

namespace Idler
{
    public class UI_BuildingElement : MonoBehaviour
    {
        [SerializeField] private Image mainIcon;
        [SerializeField] private Image costIcon;
        [SerializeField] private Image buyButtonBgImage;
        [SerializeField] private TMP_Text costText;
        [SerializeField] private TMP_Text owningText;
        [SerializeField] private Button buyButton;
        [SerializeField] private Color canBuyColor = Color.green;
        [SerializeField] private Color cantBuyColor = Color.red;

        private InteractableData interactableData;
        private IEventManager eventCtrl;
        private IResourceManager resourceCtrl;

        private void Awake()
        {
            resourceCtrl = ServiceLocator.Current.Get<IResourceManager>();
            eventCtrl    = ServiceLocator.Current.Get<IEventManager>();
        }

        private void OnEnable()
        {
            buyButton.onClick.AddListener(OnBuyButtonPressed);
            eventCtrl.ResourceChanged += OnResourceChanged;
        }

        private void OnDisable()
        {
            buyButton.onClick.RemoveListener(OnBuyButtonPressed);
            eventCtrl.ResourceChanged -= OnResourceChanged;
        }
        
        public void Initialize(InteractableData interactableData)
        {
            this.interactableData = interactableData;
            mainIcon.sprite = interactableData.icon;
            
            UpdateInfo();
        }
        
        private void UpdateInfo()
        {
            costText.text   = interactableData.NextUpgradeCost.ToString();
            costIcon.sprite = interactableData.CostResource.icon;

            UpdateBuyButton();
        }

        private void UpdateBuyButton()
        {
            bool canAfford = interactableData.HasEnoughResources();
            buyButton.interactable = canAfford;
            buyButtonBgImage.color = canAfford ? canBuyColor : cantBuyColor;
        }

        private void OnResourceChanged(ResourceData resource, float value)
        {
            if (resource == interactableData.CostResource)
                UpdateInfo();
        }

        private void OnBuyButtonPressed()
        {
            resourceCtrl.Add(interactableData.CostResource, -interactableData.NextUpgradeCost);
            interactableData.LevelUp();
            UpdateInfo();
            eventCtrl.InvokeInteractablePurchased(interactableData);
        }
    }
}