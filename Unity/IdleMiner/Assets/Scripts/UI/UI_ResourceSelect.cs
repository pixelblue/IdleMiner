using System;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

namespace Idler
{
    public class UI_ResourceSelect : MonoBehaviour
    {
        public event Action<ResourceData> AssignedResource;
        
        [SerializeField] private GameObject selectedContainer;
        [SerializeField] private GameObject unselectedContainer;
        [SerializeField] private TMP_Text labelText;
        [SerializeField] private Image mainIcon;
        [SerializeField] private Button assignButton;

        public ResourceData ResourceData { get; private set; }
        
        private void OnEnable()
        {
            assignButton.onClick.AddListener(OnAssignButtonClicked);
        }
        
        private void OnDisable()
        {
            assignButton.onClick.RemoveListener(OnAssignButtonClicked);
        }

        private void OnAssignButtonClicked()
        {
            AssignedResource?.Invoke(ResourceData);
        }

        public void Initialize(ResourceData resourceData)
        {
            this.ResourceData = resourceData;
            labelText.text = resourceData.resourceName;
            mainIcon.sprite = resourceData.icon;
            Deselect();
        }
        
        public void Select()
        {
            selectedContainer.SetActive(true);
            unselectedContainer.SetActive(false);
        }
        
        public void Deselect()
        {
            selectedContainer.SetActive(false);
            unselectedContainer.SetActive(true);
        }
    }
}