using System.Collections.Generic;
using DG.Tweening;
using UnityEngine;

namespace Idler
{
    public class Interactable_BaseStation : Interactable
    {
        [SerializeField] private List<GameObject> allStages;
        [SerializeField] private ResourceData resourceToDrop;
        [SerializeField] private BotSpawner botSpawner;

        private PropertyState hitValue;
        private PropertyState baseStationBots;
        private PropertyState botHitValue;

        protected override void Awake()
        {
            base.Awake();
            var d       = (BaseStationData)Data;
            hitValue        = new PropertyState(d.hitValue);
            baseStationBots = new PropertyState(d.baseStationBots);
            botHitValue     = new PropertyState(d.botHitValue);
            Properties      = new[] { hitValue, baseStationBots, botHitValue };
            WirePropertyPrerequisites();
        }

        protected override void OnEnable()
        {
            base.OnEnable();
            EventCtrl.LevelAdvanced += OnLevelAdvanced;
            if (baseStationBots != null) baseStationBots.LevelChanged += OnBotLevelChanged;
        }

        protected override void OnDisable()
        {
            base.OnDisable();
            EventCtrl.LevelAdvanced -= OnLevelAdvanced;
            if (baseStationBots != null) baseStationBots.LevelChanged -= OnBotLevelChanged;
        }

        private void OnBotLevelChanged(int level)
        {
            var oldBotCount = baseStationBots.GetValue(Mathf.Clamp(level - 1, 0, 9999999));
            var newBotCount = baseStationBots.GetValue(level);
            botSpawner.AddBot((int)(newBotCount - oldBotCount));
        }

        public int GetNumberOfBots()
        {
            return (int)(baseStationBots.Value);
        }

        public override void Initialize()
        {
            base.Initialize();

            foreach (var obj in allStages)
                obj.SetActive(false);

            var stageIndex = Mathf.Clamp(ObjectivesCtrl.CurrentLevel, 0, allStages.Count - 1);
            allStages[stageIndex]?.SetActive(true);
            CurrentLevel = ObjectivesCtrl.CurrentLevel;
        }

        public override void Load(SaveData data)
        {
            base.Load(data);
            botSpawner.Initialize(this); // spawn saved bot count after properties are loaded
        }

        public override void Reset()
        {
            base.Reset();
            botSpawner.Initialize(this);
        }

        protected override void ShowUI()
        {
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
            SpawnResource(hitValue.Value);
        }

        public override void OnBotHit()
        {
            base.OnBotHit();
            SpawnResource(botHitValue.Value);
        }

        private void SpawnResource(float value)
        {
            var newResource = (ResourceController)PoolCtrl.Spawn(MapCtrl.ResourcePrefab.name, Vector3.zero);
            newResource.Initialize(Coll, resourceToDrop, value);
        }
    }
}
