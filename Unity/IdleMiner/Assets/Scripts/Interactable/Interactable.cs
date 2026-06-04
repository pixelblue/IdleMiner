using System;
using ANS.Common;
using ANS.Common.ServiceLocator;
using UnityEngine;

namespace Idler
{
    public abstract class Interactable : MonoBehaviour
    {
        protected IPool PoolCtrl;
        protected IMining MiningCtrl;
        
        protected virtual void Awake()
        {
            PoolCtrl = ServiceLocator.Current.Get<IPool>();
            MiningCtrl = ServiceLocator.Current.Get<IMining>();
        }

        public abstract void OnCursorEnter(CursorController cursor);
        public abstract void OnCursorExit(CursorController cursor);
        public abstract void OnCursorHit(CursorController cursor);
    }
}