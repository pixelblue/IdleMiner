using UnityEngine;

namespace Idler
{
    public class ResourceController : MonoBehaviour
    {
        [SerializeField] private SpriteRenderer spriteRenderer;

        public ResourceData ResourceData { get; private set; }
        public float Amount { get; private set; }

        public void Initialize(ResourceData resourceData, float amount)
        {
            this.ResourceData = resourceData;
            spriteRenderer.sprite = resourceData.icon;
            this.Amount = amount;
        }

        public void AddAmount(float amount)
        {
            Amount += amount;
        }
    }
}