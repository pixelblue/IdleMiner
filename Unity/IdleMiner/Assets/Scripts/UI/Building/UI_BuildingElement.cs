using System;
using System.Linq;
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
        private IMap mapCtrl;

        private void Awake()
        {
            resourceCtrl = ServiceLocator.Current.Get<IResourceManager>();
            eventCtrl    = ServiceLocator.Current.Get<IEventManager>();
            mapCtrl      = ServiceLocator.Current.Get<IMap>();
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

            var currentLevel = interactableData.CurrentLevel;
            var objectsInScene = GetInteractableObjectsInScene();

            if (IsMaxed())
            {
                costIcon.gameObject.SetActive(false);
                costText.text = "MAX";
                buyButton.interactable = false;
            }
            
            owningText.text = currentLevel + " / " + objectsInScene;
            UpdateBuyButton();
        }

        private bool IsMaxed()
        {
            var currentLevel = interactableData.CurrentLevel;
            var objectsInScene = GetInteractableObjectsInScene();
            
            return currentLevel >= objectsInScene;
        }

        private int GetInteractableObjectsInScene()
        {
            return mapCtrl.AllInteractables.Count(interactable => interactable.Data == interactableData);
        }

        private void UpdateBuyButton()
        {
            bool canAfford = interactableData.HasEnoughResources();
            if (canAfford)
            {
                if(IsMaxed() == false) buyButton.interactable = true;
            }
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