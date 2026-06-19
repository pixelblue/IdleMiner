using System;
using ANS.Common.ServiceLocator;
using UnityEngine;

namespace Idler
{
    public class Screen : MonoBehaviour
    {
        public IEventManager eventManagerCtrl;
        
        private void Awake()
        {
            eventManagerCtrl = ServiceLocator.Current.Get<IEventManager>();
        }

        public virtual void Show()
        {
            gameObject.SetActive(true);
        }
        
        public virtual void Hide()
        {
            gameObject.SetActive(false);
        }
    }
}