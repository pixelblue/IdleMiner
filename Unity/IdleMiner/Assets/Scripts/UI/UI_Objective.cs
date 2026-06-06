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

        private IEvent eventCtrl;
        private ObjectiveData objectiveData;

        private void Awake()
        {
            eventCtrl = ServiceLocator.Current.Get<IEvent>();
        }

        private void OnEnable()
        {
            eventCtrl.ResourceChanged += OnResourceChanged;
        }

        private void OnDisable()
        {
            eventCtrl.ResourceChanged -= OnResourceChanged;
        }
        
        public void Initialize(ObjectiveData objectiveData)
        {
            this.objectiveData = objectiveData;
            descriptionText.text = objectiveData.description;
            if (objectiveData.targetAmount >= 1)
            {
                counterText.text = $"0 / {objectiveData.targetAmount}";
                slider.maxValue = objectiveData.targetAmount;
                slider.value = 0;
            }
        }

        private void OnResourceChanged(ResourceData resourceData, float amount)
        {
            if (objectiveData.type == ObjectiveType.CollectResource)
            {
                if (objectiveData.targetResource == resourceData)
                {
                    var progress = Mathf.Min(amount, objectiveData.targetAmount);
                    counterText.text = $"{progress} / {objectiveData.targetAmount}";
                    slider.value = progress;
                    if (amount >= objectiveData.targetAmount)
                    {
                        slider.gameObject.SetActive(false);
                        completedText.gameObject.SetActive(true);
                    }
                }
            }
        }
    }
}