using System.Collections.Generic;
using UnityEngine;

namespace Idler
{
    // Pure view — destroyed and recreated on every deselect/reselect. Owns no state of its
    // own; just spawns slot visuals matching whatever modules the (persistent) Interactable hands it.
    public class InteractableUI_Satellite : InteractableUI
    {
        [field: SerializeField] public Transform SlotContainer { get; private set; }
        [SerializeField] private UI_ProductionModule productionModuleUIPrefab;

        private readonly List<UI_ProductionModule> slotUIs = new();
        private List<ProductionModule> boundModules;

        protected override void Awake()
        {
            base.Awake();
            foreach (Transform trans in SlotContainer)
            {
                Destroy(trans.gameObject);
            }
        }

        public void BindModules(List<ProductionModule> modules)
        {
            boundModules = modules;
            for (int i = slotUIs.Count; i < modules.Count; i++)
            {
                var slotUI = Instantiate(productionModuleUIPrefab, SlotContainer);
                slotUI.Initialize();
                slotUIs.Add(slotUI);
            }
        }

        private void Update()
        {
            if (boundModules == null) return;
            for (int i = 0; i < slotUIs.Count; i++)
                slotUIs[i].SetProgress(boundModules[i].Progress);
        }
    }
}
