using ANS.Common.ServiceLocator;
using TMPro;
using UnityEngine;

namespace Idler
{
    public class InteractableUI : MonoBehaviour
    {
        [SerializeField] private TMP_Text nameText;
        [field: SerializeField] public UI_Property propertyPrefab;
        [field: SerializeField] public Transform LeveledPropertiesContainer;
        
        public RectTransform RectTransform { get; set; }
        public IGame GameCtrl { get; private set; }
        public Interactable Interactable { get; private set; }
        
        private ICamera cameraCtrl;
        private ImageEvents imageEvents;
        private InteractableData data;
        
        private void Awake()
        {
            GameCtrl = ServiceLocator.Current.Get<IGame>();
            cameraCtrl = ServiceLocator.Current.Get<ICamera>();
            RectTransform = GetComponent<RectTransform>();
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

            var attachPoint = cameraCtrl.Cam.WorldToScreenPoint(Interactable.UiAttachPoint.position);
            attachPoint.z = 0f;
            this.transform.position = attachPoint;
        }
        
        
        private void OnPointerEnter()
        {
            
        }

        private void OnPointerExit()
        {
            Interactable.TryDeselect();
        }

        public virtual void Show(Interactable interactable)
        {
            this.Interactable = interactable;
            this.data = interactable.Data;
            this.gameObject.SetActive(true);

            nameText.text = data.interactableName;

            foreach (Transform trans in LeveledPropertiesContainer)
            {
                Destroy(trans.gameObject);
            }

            CreateProperties();

        }

        protected virtual void CreateProperties()
        {
            foreach (var state in Interactable.Properties)
            {
                var propUI = Instantiate(propertyPrefab, LeveledPropertiesContainer);
                propUI.Initialize(state, Interactable);
            }
        }

        public virtual void Hide()
        {
            this.gameObject.SetActive(false);
        }
    }
}