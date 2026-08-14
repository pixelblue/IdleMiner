using System;
using UnityEngine;

namespace Idler
{
    public class AnimateShaderParameter : MonoBehaviour
    {
        [SerializeField] private string ParameterName = "_EdgeGlowPower";
        [SerializeField] private MeshRenderer[] meshRenderers;
        [SerializeField] private float speed;
        [SerializeField] private float maxValue;

        private Material material;
        
        private void Awake()
        {
            material = meshRenderers[0].material;
        }

        private void Update()
        {
            float value = Mathf.PingPong(Time.time * speed, maxValue);
            material.SetFloat(ParameterName, value);
        }
    }
}
