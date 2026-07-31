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

        private void Awake()
        {
            gameCtrl = ServiceLocator.Current.Get<IGame>();
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

                var element = Instantiate(uiBuildingElementPrefab, buildingElementsContainer);
                element.Initialize(data);
            }
        }
    }
}