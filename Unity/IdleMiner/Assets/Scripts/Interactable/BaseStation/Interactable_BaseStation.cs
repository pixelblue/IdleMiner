using System.Collections.Generic;
using DG.Tweening;
using UnityEngine;

namespace Idler
{
    public class Interactable_BaseStation : Interactable
    {
        [SerializeField] private List<GameObject> allStages;
        [SerializeField] private ResourceData resourceToDrop;

        protected override void OnEnable()
        {
            base.OnEnable();
            eventManagerCtrl.LevelAdvanced += OnLevelAdvanced;
        }

        protected override void OnDisable()
        {
            base.OnDisable();
            eventManagerCtrl.LevelAdvanced += OnLevelAdvanced;
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
            var newResource = (ResourceController)PoolCtrl.Spawn(MapCtrl.ResourcePrefab.name, Vector3.zero);
            newResource.Initialize(Coll, resourceToDrop, GameCtrl.Data.HitValue.Value);
            
            transform.DOKill();
            transform.localScale = Vector3.one * 1.2f;
            transform.DOScale(Vector3.one, 0.2f);

        }
    }
}