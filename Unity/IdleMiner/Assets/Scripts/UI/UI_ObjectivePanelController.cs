using System;
using ANS.Common.ServiceLocator;
using TMPro;
using UnityEngine;

namespace Idler
{
    public class UI_ObjectivePanelController : MonoBehaviour
    {
        [SerializeField] private TMP_Text levelText;
        [SerializeField] private UI_Objective[] allObjectives;

        private IObjectives objectiveCtrl;
        
        private void Awake()
        {
            objectiveCtrl = ServiceLocator.Current.Get<IObjectives>();
        }

        private void Start()
        {
            foreach (var uiObjective in allObjectives)
            {
                uiObjective.gameObject.SetActive(false);
            }

            var i = 0;
            foreach (var objectiveData in objectiveCtrl.CurrentLevelData.objectives)
            {
                allObjectives[i].gameObject.SetActive(true);
                allObjectives[i].Initialize(objectiveData);
                i++;
            }

            levelText.text = (objectiveCtrl.CurrentLevel + 1).ToString();
        }
    }
}