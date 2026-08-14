using System;
using UnityEngine;

namespace Idler
{
    public class RotateAnimation : MonoBehaviour
    {
        [SerializeField] private Transform target;
        [SerializeField] private Vector3 axis;
        [SerializeField] private float speed;

        private void Update()
        {
            target.Rotate(axis * (speed * Time.deltaTime));
        }
    }
}
