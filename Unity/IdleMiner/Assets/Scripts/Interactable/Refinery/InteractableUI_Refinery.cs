using System.Collections.Generic;
using UnityEngine;

namespace Idler
{
    // Pure view — destroyed and recreated on every deselect/reselect. Owns no state of its
    // own; binds directly to the (persistent) Interactable's module list so a reselect just
    // re-displays whatever was already assigned/in-progress, instead of resetting it.
    public class InteractableUI_Refinery : InteractableUI
    {
        [SerializeField] private UI_RefinableResourceElement refinableResourceElement;
        [SerializeField] private Transform refinableResourcesContainer;
        [SerializeField] private List<UI_AssignedRefinedResource> allAssignedRefinedResourceElements;
        [SerializeField] private GameObject resourcesPanelObj;

        private List<ProductionModule> boundModules;
        private int pendingSlotIndex = -1;

        // Called once per fresh panel instance by Interactable_Refinery.ShowUI().
        public void BindModules(List<ProductionModule> modules)
        {
            boundModules = modules;
            resourcesPanelObj.SetActive(false);
            for (int i = 0; i < allAssignedRefinedResourceElements.Count; i++)
            {
                var slotUI = allAssignedRefinedResourceElements[i];
                int slotIndex = i; // local copy — safe to capture per-iteration
                slotUI.Initialize();
                slotUI.AssignRefinedResource(modules[i].OutputResource as ResourceData_Refined);
                slotUI.AssignRequested += () => OpenResourcesPanel(slotIndex);
            }
        }

        private void Update()
        {
            if (boundModules == null) return;
            for (int i = 0; i < allAssignedRefinedResourceElements.Count; i++)
            {
                allAssignedRefinedResourceElements[i].SetProgress(boundModules[i].Progress);
                allAssignedRefinedResourceElements[i].SetStarved(boundModules[i].IsStarved);
            }
        }

        private void OpenResourcesPanel(int slotIndex)
        {
            pendingSlotIndex = slotIndex;
            resourcesPanelObj.SetActive(true);
            CreateRefinableResources();
        }

        private void CreateRefinableResources()
        {
            foreach (Transform trans in refinableResourcesContainer)
            {
                Destroy(trans.gameObject);
            }

            foreach (var refinedResource in GameCtrl.Data.refinedResources)
            {
                var element = Instantiate(refinableResourceElement, refinableResourcesContainer);
                element.Initialize(refinedResource, TryAssignResource);
            }
        }

        private void TryAssignResource(ResourceData_Refined resource)
        {
            if (pendingSlotIndex < 0) return;
            boundModules[pendingSlotIndex].Assign(resource, 1f);
            allAssignedRefinedResourceElements[pendingSlotIndex].AssignRefinedResource(resource);
            resourcesPanelObj.SetActive(false);
            pendingSlotIndex = -1;
        }
    }
}
