using System;
using ANS.Common;
using ANS.Common.ServiceLocator;
using UnityEngine;
using UnityEngine.UI;

namespace Idler
{
    public class ResourceManager : MonoBehaviour, IResource
    {
        [SerializeField] private Canvas canvas;
        [SerializeField] private Image resourceImagePrefab;

        public event Action<ResourceData, float> OnResourceChanged;

        private IPool poolCtrl;

        private void Awake()
        {
            poolCtrl = ServiceLocator.Current.Get<IPool>();
        }

        public void Add(ResourceData resource, float amount)
        {
            resource.amount += amount;
            OnResourceChanged?.Invoke(resource, resource.amount);
        }

        public Image SpawnUIElement(Sprite sprite)
        {
            var img = poolCtrl.Spawn(resourceImagePrefab.name, Vector3.zero) as Image;
            img.transform.SetParent(canvas.transform, false);
            img.sprite = sprite;
            return img;
        }
    }
}
