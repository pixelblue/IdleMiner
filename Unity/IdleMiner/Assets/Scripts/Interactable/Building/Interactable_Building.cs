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
        }

        public override void OnCursorEnter(CursorController cursor) { }
        public override void OnCursorExit(CursorController cursor) { }
        public override void OnCursorHit(CursorController cursor) { }

        public bool CanAfford() => buildingData.CanAfford();

        public void Construct()
        {
            var resourceMgr = ServiceLocator.Current.Get<IResourceManager>();
            foreach (var req in buildingData.cost)
                resourceMgr.Add(req.resource, -req.amount);

            gameObject.SetActive(true);
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
