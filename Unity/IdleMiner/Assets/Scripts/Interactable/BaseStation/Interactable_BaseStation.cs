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
            var oldBotCount = botHitValue.GetValue(level - 1);
            var newBotCount = botHitValue.GetValue(level);
            botSpawner.AddBot((int)(newBotCount - oldBotCount));
        }

        public override void Initialize()
        {
            base.Initialize();

            foreach (var obj in allStages)
                obj.SetActive(false);

            allStages[ObjectivesCtrl.CurrentLevel].SetActive(true);
            CurrentLevel = ObjectivesCtrl.CurrentLevel;
            botSpawner.Initialize(this);
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

            transform.DOKill();
            transform.localScale = Vector3.one * 1.2f;
            transform.DOScale(Vector3.one, 0.2f);
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
