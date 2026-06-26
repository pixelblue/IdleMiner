using System;
using ANS.Common.ServiceLocator;
using UnityEngine;

namespace Idler
{
    public class ShowIfDebugEnabled : MonoBehaviour
    {
        private IDebug debugCtrl;

        private void Awake()
        {
            ServiceLocator.Current.Get<IDebug>();
        }

        private void OnEnable()
        {
            gameObject.SetActive(debugCtrl.IsDebugModeActive);
        }
    }
}