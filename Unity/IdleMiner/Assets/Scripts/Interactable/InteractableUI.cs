using System;
using ANS.Common.ServiceLocator;
using TMPro;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.UI;

namespace Idler
{
    public class InteractableUI : MonoBehaviour
    {
        [SerializeField] private TMP_Text nameText;
        [SerializeField] private UI_LeveledProperty leveledPropertyPrefab;
        [SerializeField] private Transform leveledPropertiesContainer;
        
        public RectTransform RectTransform { get; set; }
        private Interactable interactable;
        private ICamera cameraCtrl;
        private ImageEvents imageEvents;
        private InteractableData data;
        
        private void Awake()
        {
            RectTransform = GetComponent<RectTransform>();
            cameraCtrl = ServiceLocator.Current.Get<ICamera>();
            imageEvents = GetComponentInChildren<ImageEvents>();
        }

        private void OnEnable()
        {
            if (imageEvents == null) return;
            imageEvents.PointerEntered += OnPointerEnter;
            imageEvents.PointerExited += OnPointerExit;
        }

        private void OnDisable()
        {
            if (imageEvents == null) return;
            imageEvents.PointerEntered -= OnPointerEnter;
            imageEvents.PointerExited -= OnPointerExit;
        }

        private void Update()
        {
            if (this.gameObject.activeInHierarchy == false) return;

            var attachPoint = cameraCtrl.Cam.WorldToScreenPoint(interactable.UiAttachPoint.position);
            attachPoint.z = 0f;
            this.transform.position = attachPoint;
        }
        
        
        private void OnPointerEnter()
        {
            
        }

        private void OnPointerExit()
        {
            interactable.TryDeselect();
        }

        public virtual void Show(Interactable interactable)
        {
            this.interactable = interactable;
            this.data = interactable.Data;
            this.gameObject.SetActive(true);

            nameText.text = data.interactableName;

            foreach (Transform trans in leveledPropertiesContainer)
            {
                Destroy(trans.gameObject);
            }

            foreach (var leveledProperty in data.allProperties)
            {
                var newLeveledProperty = Instantiate(leveledPropertyPrefab, leveledPropertiesContainer);
                newLeveledProperty.Initialize(leveledProperty);
            }
        }

        public virtual void Hide()
        {
            this.gameObject.SetActive(false);
        }
    }
}