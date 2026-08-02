using System;
using ANS.Common.ServiceLocator;
using UnityEngine;

namespace Idler
{
    public class UI_BuildingsPanel : MonoBehaviour
    {
        [SerializeField] private UI_BuildingElement uiBuildingElementPrefab;
        [SerializeField] private Transform buildingElementsContainer;

        private IGame gameCtrl;
        private IObjectives objectivesCtrl;
        private IEventManager eventCtrl;

        private void Awake()
        {
            gameCtrl = ServiceLocator.Current.Get<IGame>();
            objectivesCtrl = ServiceLocator.Current.Get<IObjectives>();
            eventCtrl = ServiceLocator.Current.Get<IEventManager>();
        }

        private void OnEnable()
        {
            eventCtrl.LevelAdvanced += OnLevelAdvanced;
        }

        private void OnDisable()
        {
            eventCtrl.LevelAdvanced -= OnLevelAdvanced;
        }

        private void OnLevelAdvanced(int level)
        {
            Initialize();
        }

        public void Initialize()
        {
            foreach (Transform trans in buildingElementsContainer)
            {
                Destroy(trans.gameObject);
            }
            foreach (var data in gameCtrl.Data.allInteractables)
            {
                if (!data.isBuildable) continue;
                if (data.unlockAtObjectivesLevel >= objectivesCtrl.CurrentLevel) continue;
                var element = Instantiate(uiBuildingElementPrefab, buildingElementsContainer);
                element.Initialize(data);
            }
        }
    }
}