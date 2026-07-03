using System;
using ANS.Common.ServiceLocator;
using TMPro;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

namespace Idler
{
    public class UI_Property : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler
    {
        [SerializeField] private UI_PropertyInfo infoPopupPrefab;
        [SerializeField] private Color lockedBuyColor = Color.red;
        [SerializeField] private Color unlockedBuyColor = Color.green;
        [SerializeField] private CanvasGroup canvasGroup;
        [SerializeField] private TMP_Text propertyNameText;
        [SerializeField] private GameObject highlightObj;
        [SerializeField] private Image propertyIcon;
        [SerializeField] private Button buyButton;
        [SerializeField] private TMP_Text costText;
        [SerializeField] private Image costIcon;
        
        private PropertyState data;
        private Interactable interactable;
        private IResourceManager resourceCtrl;
        private IEventManager eventCtrl;
        private UI_PropertyInfo infoPopup;
        private RectTransform rectTransform;
        private IMainUI uiCtrl;

        private void Awake()
        {
            uiCtrl = ServiceLocator.Current.Get<IMainUI>();
            resourceCtrl = ServiceLocator.Current.Get<IResourceManager>();
            eventCtrl = ServiceLocator.Current.Get<IEventManager>();
            rectTransform = GetComponent<RectTransform>();
        }

        private void OnEnable()
        {
            buyButton.onClick.AddListener(OnBuyButtonPressed);
            eventCtrl.ResourceChanged += OnResourceChanged;
            if (data?.Prerequisite != null) data.Prerequisite.LevelChanged += OnPrerequisiteLevelChanged;
        }

        private void OnDisable()
        {
            buyButton.onClick.RemoveListener(OnBuyButtonPressed);
            eventCtrl.ResourceChanged -= OnResourceChanged;
            if (data?.Prerequisite != null) data.Prerequisite.LevelChanged -= OnPrerequisiteLevelChanged;
            
            HideInfoPopup();
        }

        public void Initialize(PropertyState propertyState, Interactable interactable)
        {
            this.data = propertyState;
            this.interactable = interactable;
            if (data.Prerequisite != null) data.Prerequisite.LevelChanged += OnPrerequisiteLevelChanged;
            UpdateInfo();
        }

        public void OnPointerEnter(PointerEventData eventData) => ShowInfoPopup();
        public void OnPointerExit(PointerEventData eventData)  => HideInfoPopup();

        private void OnResourceChanged(ResourceData resource, float delta) => UpdateInfo();
        private void OnPrerequisiteLevelChanged(int _) => UpdateInfo();

        private void UpdateInfo()
        {
            if (data.propertyIcon == null)
            {
                propertyIcon.gameObject.SetActive(false);
            }
            else
            {
                propertyIcon.gameObject.SetActive(true);
                propertyIcon.sprite = data.propertyIcon;
            }
            propertyNameText.text = data.propertyName;
            costIcon.sprite = data.costResource.icon;
            costText.text = Mathf.Ceil(data.NextUpgradeCost).ToString();
            if (data.CurrentLevel >= data.MaxLevel) costText.text = "MAX";
            UpdateBuyButton();
            
            this.gameObject.SetActive(data.IsUnlocked && data.showInUI);
        }

        private void UpdateBuyButton()
        {
            if (data.CurrentLevel >= data.MaxLevel)
            {
                DisableBuyButton();
                return;
            }
            
            if (data.HasEnoughResources())
            {
               EnableBuyButton();
            }
            else
            {
                DisableBuyButton();
            }
        }
        
        private void EnableBuyButton()
        {
            buyButton.interactable = true;
            buyButton.image.color = unlockedBuyColor;
        }

        private void DisableBuyButton()
        {
            buyButton.interactable = false;
            buyButton.image.color = lockedBuyColor;
        }

        private void OnBuyButtonPressed()
        {
            resourceCtrl.Add(data.costResource, -data.NextUpgradeCost);
            data.LevelUp();
            UpdateInfo();
            HideInfoPopup();
        }

        private void ShowInfoPopup()
        {
            highlightObj.SetActive(true);
            infoPopup = Instantiate(infoPopupPrefab, uiCtrl.InteractablesContainer.transform);
            infoPopup.Show(data, rectTransform);
        }

        private void HideInfoPopup()
        {
            highlightObj.SetActive(false);
            if (infoPopup != null) Destroy(infoPopup.gameObject);
        }
    }
}