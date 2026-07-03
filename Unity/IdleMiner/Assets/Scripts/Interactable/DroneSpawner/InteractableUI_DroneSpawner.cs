using System.Collections.Generic;
using UnityEngine;

namespace Idler.DroneSpawner
{
    public class InteractableUI_DroneSpawner : InteractableUI
    {
        [SerializeField] private Transform container;
        [SerializeField] private UI_ResourceSelect resourceSelectPrefab;
        
        private List<UI_ResourceSelect> activeAssignResources = new();
        private Interactable_DroneSpawner spawner;

        public override void Show(Interactable interactable)
        {
            base.Show(interactable);
            spawner = (Interactable_DroneSpawner)interactable;

            foreach (Transform trans in container)
            {
                Destroy(trans.gameObject);
            }
            
            foreach (var kvp in MapCtrl.MineablesByResource)
            {
                var newSelectCtrl = Instantiate(resourceSelectPrefab, container);
                newSelectCtrl.Initialize(kvp.Key);
                newSelectCtrl.AssignedResource += OnAssignedResource;
                activeAssignResources.Add(newSelectCtrl);
            }

            SyncSelection(spawner.SelectedResource);
        }

        public override void Hide()
        {
            base.Hide();
            foreach (var ctrl in activeAssignResources)
                ctrl.AssignedResource -= OnAssignedResource;
            activeAssignResources.Clear();
            spawner = null;
        }

        private void OnAssignedResource(ResourceData resourceData)
        {
            spawner.AssignResource(resourceData);
            SyncSelection(resourceData);
        }

        private void SyncSelection(ResourceData resourceData)
        {
            foreach (var uiCtrl in activeAssignResources)
            {
                if (uiCtrl.ResourceData == resourceData) uiCtrl.Select();
                else uiCtrl.Deselect();
            }
        }
    }
}