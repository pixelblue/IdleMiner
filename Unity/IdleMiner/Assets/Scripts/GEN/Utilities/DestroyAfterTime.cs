using System.Collections;
using ANS_Core.Utilities;
using ANS.Common;
using ANS.Common.ServiceLocator;
using UnityEngine;

namespace ANS.Utilities
{
    public class DestroyAfterTime : MonoBehaviour
    {
        
        public float destroyAfter = 1.0f;

        private IPool poolCtrl;

        private void Awake()
        {
            poolCtrl = ServiceLocator.Current.Get<IPool>();
        }

        private void OnEnable()
        {
            StartCoroutine(CallDestroyAfter());
        }

        private IEnumerator CallDestroyAfter()
        {
            yield return new WaitForSeconds(destroyAfter);
            poolCtrl.Release(Util.GetNameWithoutClone(this.gameObject.name), transform);
        }
    }
}
