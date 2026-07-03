using UnityEngine;

namespace Idler
{
    [CreateAssetMenu(fileName = "Resource", menuName = "Idler/Resource")]
    public class ResourceData : ScriptableObject, ISaveLoad
    {
        public string resourceName;
        public Sprite icon;
        public float value = 1.0f;

        public float CurrentAmount { get; set; }
        public bool IsDiscovered { get; set; }

        public void Save(SaveData data)
        {
            var entry = System.Array.Find(data.resources, e => e.resourceName == name);
            if (entry == null) return;
            entry.currentAmount  = CurrentAmount;
            entry.isDiscovered   = IsDiscovered;
        }

        public void Load(SaveData data)
        {
            var entry = System.Array.Find(data.resources, e => e.resourceName == name);
            if (entry != null)
            {
                CurrentAmount = entry.currentAmount;
                IsDiscovered  = entry.isDiscovered;
            }
            else Reset();
        }

        public void Reset()
        {
            CurrentAmount = 0f;
            IsDiscovered  = false;
        }
    }
}