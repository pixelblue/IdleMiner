using System;
using ANS.Common;
using ANS.Common.ServiceLocator;
using UnityEngine;

namespace Idler
{
    public class BotController : MonoBehaviour
    {
        [SerializeField] private BulletController bulletPrefab;
        [SerializeField] private float fireRate = 1.0f;
        [SerializeField] private float fireRateMax = 0.5f;

        private float timer;
        private IPool poolCtrl;
        public BotSpawner BotSpawner { get; private set; }

        private void Awake()
        {
            poolCtrl = ServiceLocator.Current.Get<IPool>();
        }

        public void Initialize(BotSpawner botSpawner)
        {
            this.BotSpawner = botSpawner;
            timer = fireRate;
        }

        private void Update()
        {
            timer -= Time.deltaTime;
            if (timer <= 0.0f)
            {
                var bulletCtrl = poolCtrl.Spawn(bulletPrefab.name, transform.position) as BulletController;
                bulletCtrl.Initialize(this);

                timer = BotSpawner.Interactable.IsCursorPressed ? fireRateMax : fireRate;
            }
        }
    }
}