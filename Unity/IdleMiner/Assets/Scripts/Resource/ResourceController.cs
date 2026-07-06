using System;
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
        [SerializeField] private RectTransform moverRectTrans;

        private RectTransform rectTransform;
        private IResourceManager resourceManagerMgr;
        private IMainUI mainUI;
        private ICamera cameraCtrl;
        private IPool poolCtrl;
        private Transform transToFollow;

        private void Awake()
        {
            rectTransform = GetComponent<RectTransform>();
            resourceManagerMgr   = ServiceLocator.Current.Get<IResourceManager>();
            mainUI        = ServiceLocator.Current.Get<IMainUI>();
            cameraCtrl    = ServiceLocator.Current.Get<ICamera>();
            poolCtrl      = ServiceLocator.Current.Get<IPool>();
        }

        public void Initialize(Transform transToFollow, ResourceData data, float amount)
        {
            this.transToFollow = transToFollow;
            icon.sprite  = data.icon;
            amountText.text = Mathf.Ceil(amount).ToString();

            transform.SetParent(mainUI.ResourcesContainer, true);
            transform.localScale = Vector3.one;

            moverRectTrans.DOKill();
            moverRectTrans.anchoredPosition = Vector3.zero;
            moverRectTrans.DOAnchorPos(moverRectTrans.anchoredPosition + Vector2.up * 50f, 0.5f).OnComplete(() =>
            {
                poolCtrl.Release(Util.GetNameWithoutClone(this.gameObject.name), this);
            });
            
            resourceManagerMgr.Add(data, amount);

        }

        private void Update()
        {
            var screenPos = cameraCtrl.Cam.WorldToScreenPoint(transToFollow.position);
            rectTransform.position = new Vector3(screenPos.x, screenPos.y, 0f);
        }
    }
}
