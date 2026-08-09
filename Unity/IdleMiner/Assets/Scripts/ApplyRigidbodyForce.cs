using System;
using System.Collections;
using NaughtyAttributes;
using UnityEngine;

namespace Idler
{
    public class ApplyRigidbodyForce : MonoBehaviour
    {
        [SerializeField] private Vector3 debugTorque;
        [SerializeField] private Vector3 debugForce;
        
        private Rigidbody rb;
        private Collider coll;

        private void Awake()
        {
            rb = GetComponent<Rigidbody>();
            coll = GetComponentInChildren<Collider>();
        }

        [Button("Apply Force")]
        public void ApplyForce()
        {
            coll.enabled = false;
            rb.isKinematic = false;
            rb.AddForce(debugForce, ForceMode.VelocityChange);
            rb.AddTorque(debugTorque, ForceMode.VelocityChange);
            StartCoroutine(EnableColliderDelayed());
        }

        private IEnumerator EnableColliderDelayed()
        {
            yield return new WaitForSeconds(0.3f);
            coll.enabled = true;
        }

        public void ApplyForce(float x, float y, float z)
        {
            rb.AddForce(new Vector3(x, y, z));
        }
        public void ApplyForce(Vector3 force)
        {
            rb.AddForce(force);
        }
    }
}
