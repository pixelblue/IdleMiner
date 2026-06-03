using System;
using UnityEngine;
using Random = UnityEngine.Random;

namespace Idler
{
    public class Interactable_Asteroid : Interactable
    {
        [SerializeField] private Transform geoTrans;
        [SerializeField] private float rotationSpeed = 10f;
        [SerializeField] private Transform orbitTransform;
        
        private Vector3 randomAxis;
        
        void OnEnable()
        {
            // rotate randomly
            randomAxis = new Vector3(UnityEngine.Random.value, UnityEngine.Random.value,UnityEngine.Random.value).normalized;
            geoTrans.Rotate(randomAxis, rotationSpeed * Random.Range(0f, 360f));
        }
        
        private void Update()
        {
            geoTrans.Rotate(randomAxis, rotationSpeed * Time.deltaTime);
            orbitTransform.LookAt(Camera.main.transform);
        }

        public override void OnCursorEnter(CursorController cursor)
        {
            
        }

        public override void OnCursorExit(CursorController cursor)
        {
            
        }

        public override void OnCursorHit(CursorController cursor)
        {
            
        }
    }
}