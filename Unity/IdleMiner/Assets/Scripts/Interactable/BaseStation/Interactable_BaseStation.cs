using System.Collections.Generic;
using DG.Tweening;
using UnityEngine;

namespace Idler
{
    public class Interactable_BaseStation : Interactable
    {
        [SerializeField] private ResourceData resourceToDrop;
        [SerializeField] private BotSpawner botSpawner;
        [SerializeField] private Animation hoverAnimation;

        private PropertyState hitValue;
        private PropertyState energyCrystals;
        private PropertyState baseStationBots;
        private PropertyState botHitValue;

        protected override void Awake()
        {
            base.Awake();
            var d       = (BaseStationData)Data;
            hitValue        = new PropertyState(d.hitValue);
            energyCrystals  = new PropertyState(d.energyCrystals);
            baseStationBots = new PropertyState(d.baseStationBots);
            botHitValue     = new PropertyState(d.botHitValue);
            Properties      = new[] { hitValue, energyCrystals, baseStationBots, botHitValue };
            WirePropertyPrerequisites();
        }

        protected override void OnEnable()
        {
            base.OnEnable();
            EventCtrl.LevelAdvanced += OnLevelAdvanced;
            if (baseStationBots != null) baseStationBots.LevelChanged += OnBotLevelChanged;
            if (energyCrystals != null) energyCrystals.LevelChanged += OnEnergyCrystalsChanged;
        }

        protected override void OnDisable()
        {
            base.OnDisable();
            EventCtrl.LevelAdvanced -= OnLevelAdvanced;
            if (baseStationBots != null) baseStationBots.LevelChanged -= OnBotLevelChanged;
            if (energyCrystals != null) energyCrystals.LevelChanged -= OnEnergyCrystalsChanged;
        }
        
        public override void Initialize()
        {
            base.Initialize();
            CurrentLevel = ObjectivesCtrl.CurrentLevel;

            if (CurrentLevel == 1) hoverAnimation.Play();
        }

        private void OnEnergyCrystalsChanged(int level)
        {
            var oldCrystalCount = energyCrystals.GetValue(Mathf.Clamp(level - 1, 0, 9999999));
            var newCrystalCount = energyCrystals.GetValue(level);
            ResourceCtrl.Add(baseStationBots.costResource, (int)(newCrystalCount - oldCrystalCount));
        }

        private void OnBotLevelChanged(int level)
        {
            var oldBotCount = baseStationBots.GetValue(Mathf.Clamp(level - 1, 0, 9999999));
            var newBotCount = baseStationBots.GetValue(level);
            botSpawner.AddBot((int)(newBotCount - oldBotCount));
        }

        protected override void BumpHitContainer()
        {
            switch (ObjectivesCtrl.CurrentLevel)
            {
                case 0:
                    HitController.ApplyHit(HitType.Vertical);
                    break;
                default:
                    HitController.ApplyHit(HitType.Vertical);
                    break;
            }
        }

        public int GetNumberOfBots()
        {
            return (int)(baseStationBots.Value);
        }
        
        public override void Save(SaveData data)
        {
            base.Save(data);
            var entry = System.Array.Find(data.baseStations, e => e.interactableId == SaveId);
            if (entry == null)
            {
                entry = new BaseStationSaveEntry { interactableId = SaveId };
                var entries = data.baseStations;
                System.Array.Resize(ref entries, entries.Length + 1);
                entries[^1] = entry;
                data.baseStations = entries;
            }
        }

        public override void Load(SaveData data)
        {
            base.Load(data);
            var entry = System.Array.Find(data.baseStations, e => e.interactableId == SaveId);
            botSpawner.Initialize(this); // spawn saved bot count after properties are loaded
        }

        public override void Reset()
        {
            base.Reset();
            botSpawner.Initialize(this);
        }

        protected override void ShowUI()
        {
            SpawnUIElement();
            if(ObjectivesCtrl.CurrentLevel > 0) 
                if (InteractableUICtrl != null)
                    InteractableUICtrl.Show(this);
        }

        private void OnLevelAdvanced(int level)
        {
            CurrentLevel = level;
            Initialize();
        }

        public override void OnCursorHit(CursorController cursor)
        {
            base.OnCursorHit(cursor);
            SpawnResource(hitValue.Value, resourceToDrop);
        }

        public override void OnBotHit()
        {
            base.OnBotHit();
            SpawnResource(botHitValue.Value, resourceToDrop);
        }
    }
}
