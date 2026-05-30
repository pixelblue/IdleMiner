using UnityEngine;

namespace ANS_Core.Types
{
    [System.Serializable]
    public class FloatClamped01
    {
        [SerializeField] private FloatVariable floatVar;

        public float Value
        {
            get { return Mathf.Clamp(floatVar.value, 0.0f, 1.0f); }
            set { floatVar.value = Mathf.Clamp(value, 0.0f, 1.0f); }
        }
    }
}
