using System;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

namespace Idler
{
    public class InteractableUI : MonoBehaviour
    {
        [SerializeField] private Image image;
        [SerializeField] private UI_ResourceRequirement[] allResourceElements;
        
        public RectTransform RectTransform { get; set; }

        private void Awake()
        {
            RectTransform = GetComponent<RectTransform>();
        }

        public void SetSprite(Sprite sprite)
        {
            if(image != null) image.sprite =  sprite; 
        }

        public void SetResourceRequirement(BuildingData buildingData)
        {
            if (allResourceElements == null) return;
            if (allResourceElements.Length == 0) return;

            foreach (var resourceElement in allResourceElements)
            {
                resourceElement.gameObject.SetActive(false);
            }
            var i = 0;
            foreach (var resourceRequirement in buildingData.cost)
            {
                allResourceElements[i].Initialize(resourceRequirement);
                allResourceElements[i].gameObject.SetActive(true);
                i++;
            }

        }
    }
}