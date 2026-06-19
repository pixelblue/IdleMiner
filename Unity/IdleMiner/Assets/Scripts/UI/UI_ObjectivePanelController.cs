using System;
using ANS.Common.ServiceLocator;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

namespace Idler
{
    public class UI_ObjectivePanelController : MonoBehaviour
    {
        [SerializeField] private Button levelUpButton;
        [SerializeField] private GameObject levelUpButtonActiveContainer;
        [SerializeField] private TMP_Text levelText;
        [SerializeField] private UI_Objective[] allObjectives;

        private IEventManager eventCtrl;
        private IObjectives objectivesCtrl;
        
        private void Awake()
        {
            eventCtrl = ServiceLocator.Current.Get<IEventManager>();
            objectivesCtrl = ServiceLocator.Current.Get<IObjectives>();
        }

        private void OnEnable()
        {
            eventCtrl.LevelObjectivesCompleted += OnLevelObjectivesCompleted;
            eventCtrl.LevelAdvanced += OnLevelAdvanced;
            levelUpButton.onClick.AddListener(OnLevelUpButtonPressed);
        }

        private void OnDisable()
        {
            eventCtrl.LevelObjectivesCompleted -= OnLevelObjectivesCompleted;
            eventCtrl.LevelAdvanced -= OnLevelAdvanced;
            levelUpButton.onClick.RemoveListener(OnLevelUpButtonPressed);
        }

        public void Initialize()
        {
            ActivateLevelUpButton(false);
            levelUpButton.interactable = false;
            levelUpButtonActiveContainer.SetActive(false);
            
            foreach (var uiObjective in allObjectives)
            {
                uiObjective.gameObject.SetActive(false);
            }

            var i = 0;
            foreach (var objectiveData in objectivesCtrl.CurrentLevelData.objectives)
            {
                allObjectives[i].gameObject.SetActive(true);
                allObjectives[i].Initialize(objectiveData);
                i++;
            }

            levelText.text = (objectivesCtrl.CurrentLevel + 1).ToString();
            
            if(objectivesCtrl.IsCurrentLevelComplete)
                ActivateLevelUpButton(true);
        }
        
        private void OnLevelAdvanced(int level)
        {
            Initialize();    
        }

        private void ActivateLevelUpButton(bool value)
        {
            levelUpButtonActiveContainer.SetActive(value);
            levelUpButton.interactable = value;
        }

        private void OnLevelUpButtonPressed()
        {
            objectivesCtrl.AdvanceLevel();
            ActivateLevelUpButton(false);
        }

        private void OnLevelObjectivesCompleted()
        {
            ActivateLevelUpButton(true);
        }
    }
}