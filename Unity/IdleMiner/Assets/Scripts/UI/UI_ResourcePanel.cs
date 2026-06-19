using System.Collections.Generic;
using ANS.Common.ServiceLocator;
using UnityEngine;

namespace Idler
{
    public class UI_ResourcePanel : MonoBehaviour
    {
        [SerializeField] private GameObject container;
        [SerializeField] private UI_ResourceElement elementPrefab;
        [SerializeField] private Transform elementContainer;

        private IEventManager eventManagerCtrl;
        private IResourceManager resourceCtrl;
        private readonly Dictionary<ResourceData, UI_ResourceElement> elements = new();

        private RectTransform rectTrans;

        private void Awake()
        {
            eventManagerCtrl = ServiceLocator.Current.Get<IEventManager>();
            resourceCtrl = ServiceLocator.Current.Get<IResourceManager>();
            rectTrans = GetComponent<RectTransform>();
        }

        private void OnEnable()
        {
            eventManagerCtrl.ResourceChanged += OnResourceChanged;
        }

        private void OnDisable()
        {
            eventManagerCtrl.ResourceChanged -= OnResourceChanged;
        }

        public void Initialize()
        {
            foreach (Transform trans in elementContainer)
            {
                Destroy(trans.gameObject);
            }
            
            elements.Clear();

            foreach (var resource in resourceCtrl.GetAll())
            {
                if (resource.CurrentAmount <= 0f) continue;
                var element = Instantiate(elementPrefab, elementContainer);
                element.Initialize(resource, resource.CurrentAmount);
                elements[resource] = element;
            }

            container.SetActive(elements.Count > 0);
            if (elements.Count > 0)
                rectTrans.sizeDelta = new Vector2(rectTrans.sizeDelta.x,
                    100 + (elements.Count * elementPrefab.GetComponent<RectTransform>().sizeDelta.y));
        }

        private void OnResourceChanged(ResourceData resourceData, float amount)
        {
            if (elements.ContainsKey(resourceData)) return;

            var element = Instantiate(elementPrefab, elementContainer);
            element.Initialize(resourceData, amount);
            elements[resourceData] = element;

            container.SetActive(true);
            rectTrans.sizeDelta = new Vector2(rectTrans.sizeDelta.x,
                100 + (elements.Count * elementPrefab.GetComponent<RectTransform>().sizeDelta.y));
        }
    }
}