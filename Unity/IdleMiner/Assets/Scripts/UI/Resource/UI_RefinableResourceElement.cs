using System;
using ANS_Core.Utilities;
using ANS.Common.ServiceLocator;
using Idler;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

namespace Idler
{
    public class UI_RefinableResourceElement : MonoBehaviour
    {
        [SerializeField] private Image resourceIcon;
        [SerializeField] private TMP_Text costText;
        [SerializeField] private Button refineButton;
        [SerializeField] private Image buttonImage;
        [SerializeField] private TMP_Text buttonText;

        private ResourceData_Refined data;
        private IGame gameCtrl;
        private Action<ResourceData_Refined> onRefineClicked;

        private void Awake()
        {
            gameCtrl = ServiceLocator.Current.Get<IGame>();
            refineButton.onClick.AddListener(() => onRefineClicked?.Invoke(data));
        }

        public void Initialize(ResourceData_Refined refinedResource, Action<ResourceData_Refined> onRefineClicked)
        {
            this.data = refinedResource;
            this.onRefineClicked = onRefineClicked;
            costText.text = Util.FormatNumber(data.requiredResource.CurrentAmount) + " / " + Util.FormatNumber(data.requiredAmount);
            resourceIcon.sprite = data.icon;

            if (data.HasEnoughRequiredResources())
            {
                refineButton.interactable = true;
                buttonImage.color = gameCtrl.Data.hasEnoughResourcesButtonColor;
            }
            else
            {
                refineButton.interactable = false;
                buttonImage.color = gameCtrl.Data.missingResourceAmountButtonColor;
            }
        }
    }
}
