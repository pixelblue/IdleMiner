using System;
using ANS_Core.Utilities;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

namespace Idler
{
    public class UI_AssignedRefinedResource : UI_ProductionModule
    {
        [Header("Refined Resource")]
        [SerializeField] private GameObject emptyContainer;
        [SerializeField] private GameObject selectedContainer;
        [SerializeField] private TMP_Text nameText;
        [SerializeField] private Image iconImage;
        [SerializeField] private Image progressImage;
        [SerializeField] private TMP_Text progressText;
        [SerializeField] private Button assignButton;

        public ResourceData_Refined AssignedResourceToRefine { get; private set; }
        public bool IsStarved { get; private set; }

        public event Action AssignRequested;

        public void SetStarved(bool starved)
        {
            IsStarved = starved;
            progressText.color = IsStarved ? Color.red : Color.white;
        }

        private void OnEnable()
        {
            assignButton.onClick.AddListener(OnAssignButtonPressed);
        }

        private void OnDisable()
        {
            assignButton.onClick.RemoveListener(OnAssignButtonPressed);
        }

        public override void SetProgress(float t)
        {
            base.SetProgress(t);
            if(AssignedResourceToRefine == null) return;
            progressText.text = Util.FormatNumber(AssignedResourceToRefine.requiredResource.CurrentAmount) + " / " + Util.FormatNumber(AssignedResourceToRefine.requiredAmount);
        }
        
        private void OnAssignButtonPressed()
        {
            AssignRequested?.Invoke();
        }

        public void AssignRefinedResource(ResourceData_Refined refinedResource)
        {
            this.AssignedResourceToRefine = refinedResource;
            if (refinedResource == null)
            {
                emptyContainer.SetActive(true);
                selectedContainer.SetActive(false);
            }
            else
            {
                emptyContainer.SetActive(false);
                selectedContainer.SetActive(true);

                nameText.text = refinedResource.resourceName;
                iconImage.sprite = refinedResource.icon;
            }
        }
    }
}
