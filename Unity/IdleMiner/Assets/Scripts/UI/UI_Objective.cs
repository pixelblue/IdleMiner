using System;
using ANS.Common.ServiceLocator;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

namespace Idler
{
    public class UI_Objective : MonoBehaviour
    {
        [SerializeField] private TMP_Text descriptionText;
        [SerializeField] private TMP_Text counterText;
        [SerializeField] private TMP_Text completedText;
        [SerializeField] private Slider slider;

        private IEventManager eventManagerCtrl;
        private ObjectiveData objectiveData;

        private void Awake()
        {
            eventManagerCtrl = ServiceLocator.Current.Get<IEventManager>();
        }

        private void OnEnable()
        {
            eventManagerCtrl.ObjectiveProgress += OnObjectiveProgress;
        }

        private void OnDisable()
        {
            eventManagerCtrl.ObjectiveProgress -= OnObjectiveProgress;
        }
        
        public void Initialize(ObjectiveData objectiveData)
        {
            this.objectiveData = objectiveData;
            descriptionText.text = objectiveData.description;
            slider.maxValue = objectiveData.targetAmount;
            UpdateDisplay(objectiveData.CurrentAmount);
        }

        private void OnObjectiveProgress(ObjectiveData data, float currentAmount)
        {
            if (data != objectiveData) return;
            UpdateDisplay(currentAmount);
        }

        private void UpdateDisplay(float amount)
        {
            var progress = Mathf.Min(amount, objectiveData.targetAmount);
            counterText.text = $"{progress} / {objectiveData.targetAmount}";
            slider.value = progress;

            bool completed = amount >= objectiveData.targetAmount;
            slider.gameObject.SetActive(!completed);
            completedText.gameObject.SetActive(completed);
        }
    }
}