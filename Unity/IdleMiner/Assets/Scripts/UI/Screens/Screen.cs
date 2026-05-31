using System;
using ANS.Common.ServiceLocator;
using UnityEngine;

namespace Idler
{
    public class Screen : MonoBehaviour
    {
        public IEvent eventCtrl;
        
        private void Awake()
        {
            eventCtrl = ServiceLocator.Current.Get<IEvent>();
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