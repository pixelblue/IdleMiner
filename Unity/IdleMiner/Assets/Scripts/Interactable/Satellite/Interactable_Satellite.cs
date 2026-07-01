using UnityEngine;

namespace Idler
{
    public class Interactable_Satellite : Interactable
    {
        private PropertyState slots;
        private PropertyState slotSpeed;
        private InteractableUI_Satellite satelliteUI;

        protected override void Awake()
        {
            base.Awake();
            satelliteUI = InteractableUICtrl as InteractableUI_Satellite;
            var d      = (SatelliteData)Data;
            slots      = new PropertyState(d.slots);
            slotSpeed  = new PropertyState(d.slotSpeed);
            Properties = new[] { slots, slotSpeed };
            WirePropertyPrerequisites();
        }

        protected override void OnEnable()
        {
            if (slots != null) slots.LevelChanged += OnSlotLevelsChanges;
        }

        protected override void OnDisable()
        {
            if (slots != null) slots.LevelChanged -= OnSlotLevelsChanges;
        }

        private void Update()
        {
            satelliteUI?.TickModules(Time.deltaTime, slotSpeed.Value);
        }

        private void OnSlotLevelsChanges(int level)
        {
            satelliteUI?.SyncModules(Mathf.RoundToInt(slots.Value), (SatelliteData)Data, SpawnResource);
        }

        protected override void ShowUI()
        {
            base.ShowUI();
            satelliteUI?.SyncModules(Mathf.RoundToInt(slots.Value), (SatelliteData)Data, SpawnResource);
        }

        public override void Load(SaveData data)
        {
            base.Load(data);
            satelliteUI?.SyncModules(Mathf.RoundToInt(slots.Value), (SatelliteData)Data, SpawnResource);
        }

        protected override void BumpHitContainer() { }
    }
}
