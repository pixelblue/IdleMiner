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

        protected override void OnEnable()
        {
            base.OnEnable();
            EventCtrl.LevelAdvanced += OnLevelAdvanced;
            GameCtrl.Data.BaseStationBots.LevelChanged += OnBotLevelChanged;
        }

        protected override void OnDisable()
        {
            base.OnDisable();
            EventCtrl.LevelAdvanced -= OnLevelAdvanced;
            GameCtrl.Data.BaseStationBots.LevelChanged -= OnBotLevelChanged;
        }

        private void OnBotLevelChanged(int level)
        {
            var oldBotCount = GameCtrl.Data.BotHitValue.GetValue(level - 1);
            var newBotCount = GameCtrl.Data.BotHitValue.GetValue(level);
            var botsToAdd = newBotCount - oldBotCount;
            botSpawner.AddBot((int)botsToAdd);
        }

        public override void Initialize()
        {
            base.Initialize();

            foreach (var obj in allStages)
            {
                obj.SetActive(false);
            }
            
            allStages[ObjectivesCtrl.CurrentLevel].SetActive(true);
            CurrentLevel = ObjectivesCtrl.CurrentLevel;
            botSpawner.Initialize(this);
        }
        
        private void OnLevelAdvanced(int level)
        {
            CurrentLevel = level;
            Initialize();
        }

        public override void OnCursorEnter(CursorController cursor)
        {
            base.OnCursorEnter(cursor);
        }

        public override void OnCursorExit(CursorController cursor)
        {
            base.OnCursorExit(cursor);
        }

        public override void OnCursorHit(CursorController cursor)
        {
            base.OnCursorHit(cursor);
            SpawnResource(GameCtrl.Data.HitValue.Value);
            
            transform.DOKill();
            transform.localScale = Vector3.one * 1.2f;
            transform.DOScale(Vector3.one, 0.2f);
        }

        public override void OnBotHit()
        {
            base.OnBotHit();
            SpawnResource(GameCtrl.Data.BotHitValue.Value);
        }

        private void SpawnResource(float value)
        {
            var newResource = (ResourceController)PoolCtrl.Spawn(MapCtrl.ResourcePrefab.name, Vector3.zero);
            newResource.Initialize(Coll, resourceToDrop, value);
        }
    }
}