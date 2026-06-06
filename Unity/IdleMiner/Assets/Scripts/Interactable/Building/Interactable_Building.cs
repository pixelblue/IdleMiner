using ANS.Common.ServiceLocator;
using UnityEngine;

namespace Idler
{
    public class Interactable_Building : Interactable
    {
        [SerializeField] private BuildingData buildingData;
        
        public override void Initialize()
        {
            base.Initialize();
            SpawnUIElement();
            InteractableUICtrl.SetResourceRequirement(buildingData);
        }

        public override void OnCursorEnter(CursorController cursor) { }
        public override void OnCursorExit(CursorController cursor) { }
        public override void OnCursorHit(CursorController cursor) { }

        public bool CanAfford()
        {
            var inventory = ServiceLocator.Current.Get<IResource>();
            return buildingData.CanAfford(inventory.Inventory);
        }

        public void Construct()
        {
            var resourceMgr = ServiceLocator.Current.Get<IResource>();
            foreach (var req in buildingData.cost)
                resourceMgr.Add(req.resource, -req.amount);

            gameObject.SetActive(true);
            ServiceLocator.Current.Get<IEvent>().InvokeBuildingConstructed(buildingData);
        }

        public void ShowUI()
        {
            InteractableUICtrl?.gameObject.SetActive(true);
        }

        public void HideUI()
        {
            InteractableUICtrl?.gameObject.SetActive(false);
        }
    }
}
