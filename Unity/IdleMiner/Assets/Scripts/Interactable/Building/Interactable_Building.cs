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
