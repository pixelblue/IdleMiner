using System.Collections.Generic;
using ANS.Common.ServiceLocator;
using UnityEngine;

namespace Idler
{
    public class CursorResourceController : MonoBehaviour
    {
        public List<ResourceController> HoldingResources { get; private set; } = new();

        private IResource resourceCtrl;
        private float timer;
        private bool isDropping;
        private RectTransform dropPosition;

        private void Awake()
        {
            resourceCtrl = ServiceLocator.Current.Get<IResource>();
        }

        private void Update()
        {
            if (!isDropping) return;
            timer += Time.deltaTime;
            if (timer >= 0.2f)
            {
                timer = 0.0f;
                DropNextResource();
            }
        }

        private void DropNextResource()
        {
            if (HoldingResources.Count == 0) { StopResourceDrop(); return; }

            var resource = HoldingResources[0];
            HoldingResources.RemoveAt(0);
            resource.StartDrop(dropPosition);

            if (HoldingResources.Count == 0)
                StopResourceDrop();
        }

        public void StartResourceDrop(RectTransform target)
        {
            dropPosition = target;
            timer = 0f;
            isDropping = true;
        }

        public void StopResourceDrop()
        {
            isDropping = false;
            timer = 0f;
            dropPosition = null;
        }

        public void AddResource(ResourceController resource)
        {
            HoldingResources.Add(resource);
        }
    }
}
