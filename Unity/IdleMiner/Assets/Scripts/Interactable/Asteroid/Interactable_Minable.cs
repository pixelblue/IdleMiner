using System;
using ANS.Common.ServiceLocator;
using DG.Tweening;
using UnityEngine;
using Random = UnityEngine.Random;

namespace Idler
{
    public class Interactable_Minable : Interactable
    {
        [SerializeField] private ResourcePool resourcePool;
        [SerializeField] private Transform geoTrans;
        [SerializeField] private float rotationSpeed = 10f;
        [SerializeField] private Transform orbitTransform;
        
        private Vector3 randomAxis;
        private ICamera camCtrl;
        private IResource resourceCtrl;

        protected override void Awake()
        {
            base.Awake();
            camCtrl      = ServiceLocator.Current.Get<ICamera>();
            resourceCtrl = ServiceLocator.Current.Get<IResource>();
        }

        protected override void OnEnable()
        {
            base.OnEnable();
            // rotate randomly
            randomAxis = new Vector3(UnityEngine.Random.value, UnityEngine.Random.value,UnityEngine.Random.value).normalized;
            geoTrans.Rotate(randomAxis, rotationSpeed * Random.Range(0f, 360f));
        }
        
        private void Update()
        {
            geoTrans.Rotate(randomAxis, rotationSpeed * Time.deltaTime);
            orbitTransform.forward = -camCtrl.Cam.transform.forward;
        }

        public override void OnCursorEnter(CursorController cursor)
        {
            
        }

        public override void OnCursorExit(CursorController cursor)
        {
            
        }

        public override void OnCursorHit(CursorController cursor)
        {
            resourcePool.Drop((resource, amount) =>
            {
                var newResource = (ResourceController)PoolCtrl.Spawn(MapCtrl.ResourcePrefab.name, Vector3.zero);
                newResource.Initialize(resource, amount);
                transform.DOKill();
                transform.localScale = Vector3.one * 1.2f;
                transform.DOScale(Vector3.one, 0.2f);
            });
        }
    }
}