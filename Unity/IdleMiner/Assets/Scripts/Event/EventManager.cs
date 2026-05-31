using System;
using UnityEngine;

namespace Idler
{
    public class EventManager : MonoBehaviour, IEvent
    {
        public event Action MiningStarted;
        public event Action MiningStopped;
        
        public void InvokeMiningStarted()
        {
            MiningStarted?.Invoke();
        }

        public void InvokeMiningStopped()
        {
            MiningStopped?.Invoke();
        }
    }
}
