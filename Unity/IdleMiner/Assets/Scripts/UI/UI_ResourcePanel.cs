using System.Collections.Generic;
using ANS.Common.ServiceLocator;
using UnityEngine;

namespace Idler
{
    public class UI_ResourcePanel : MonoBehaviour
    {
        [SerializeField] private UI_ResourceElement elementPrefab;
        [SerializeField] private Transform elementContainer;

        private IEvent eventCtrl;
        private readonly Dictionary<ResourceData, UI_ResourceElement> elements = new();

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

        private void OnResourceChanged(ResourceData resourceData, float amount)
        {
            if (elements.ContainsKey(resourceData)) return;

            var element = Instantiate(elementPrefab, elementContainer);
            element.Initialize(resourceData, amount);
            elements[resourceData] = element;
        }
    }
}