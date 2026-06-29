using ANS.Common.ServiceLocator;
using ANS_Core.FSM;
using ANS_Core.Utilities;
using ANS.Common;
using DG.Tweening;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

namespace Idler
{
    public class ResourceController : MonoBehaviour
    {
        [SerializeField] private Image icon;
        [SerializeField] private TMP_Text amountText;

        private RectTransform rectTransform;
        private IResourceManager resourceManagerMgr;
        private IMainUI mainUI;
        private ICamera cameraCtrl;
        private IPool poolCtrl;

        private void Awake()
        {
            rectTransform = GetComponent<RectTransform>();
            resourceManagerMgr   = ServiceLocator.Current.Get<IResourceManager>();
            mainUI        = ServiceLocator.Current.Get<IMainUI>();
            cameraCtrl    = ServiceLocator.Current.Get<ICamera>();
            poolCtrl      = ServiceLocator.Current.Get<IPool>();
        }

        public void Initialize(Collider coll, ResourceData data, float amount)
        {
            icon.sprite  = data.icon;
            amountText.text = Mathf.Ceil(amount).ToString();

            transform.SetParent(mainUI.ResourcesContainer, true);
            transform.localScale = Vector3.one;
            
            var b = coll.bounds;
            var randomWorld = new Vector3(
                Random.Range(b.min.x, b.max.x),
                Random.Range(b.min.y, b.max.y),
                Random.Range(b.min.z, b.max.z));
            var screenPos = cameraCtrl.Cam.WorldToScreenPoint(randomWorld);
            rectTransform.position = new Vector3(screenPos.x, screenPos.y, 0f);
            
            rectTransform.DOAnchorPos(rectTransform.anchoredPosition + Vector2.up * 50f, 0.5f).OnComplete(() =>
            {
                poolCtrl.Release(Util.GetNameWithoutClone(this.gameObject.name), this);
            });
            
            resourceManagerMgr.Add(data, amount);

        }
    }
}
