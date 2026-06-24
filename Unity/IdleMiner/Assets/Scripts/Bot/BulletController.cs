using System;
using ANS_Core.Utilities;
using ANS.Common;
using ANS.Common.ServiceLocator;
using UnityEngine;

namespace Idler
{
    public class BulletController : MonoBehaviour
    {
        [SerializeField] private float speed = 10f;

        private Interactable interactable;
        private IPool poolCtrl;
        private float lerp;
        private Vector3 startPos;
        private Vector3 targetPos;

        private void Awake()
        {
            poolCtrl = ServiceLocator.Current.Get<IPool>();
        }

        private void Update()
        {
            lerp += Time.deltaTime * speed;
            transform.position = Vector3.Lerp(startPos, targetPos, lerp);
            if (lerp >= 1.0f)
            {
                interactable.OnBotHit();
                poolCtrl.Release(Util.GetNameWithoutClone(this.gameObject.name), this);
            }
        }

        public void Initialize(BotController botCtrl)
        {
            interactable = botCtrl.BotSpawner.Interactable;
            startPos = transform.position;
            var direction = (botCtrl.BotSpawner.transform.position - transform.position).normalized;
            Physics.Raycast(startPos, direction, out RaycastHit hit, 100f);
            targetPos = hit.point;
            lerp = 0.0f;   
        }
    }
}