using UnityEngine;

namespace Idler
{
    [CreateAssetMenu(fileName = "Objective", menuName = "Idler/Objectives/Objective")]
    public class ObjectiveData : ScriptableObject, ISaveLoad
    {
        public string description;
        public ObjectiveType type;
        public ResourceData targetResource;
        public float targetAmount;

        public float CurrentAmount { get; set; }
        public float Progress => CurrentAmount / targetAmount;
        
        public void Save(SaveData data)
        {
            var entry = System.Array.Find(data.objectives, e => e.objectiveName == name);
            if (entry != null) entry.currentAmount = CurrentAmount;
        }

        public void Load(SaveData data)
        {
            var entry = System.Array.Find(data.objectives, e => e.objectiveName == name);
            if (entry != null) 
                CurrentAmount = Mathf.Min(entry.currentAmount, targetAmount);
            else Reset();
        }

        public void Reset()
        {
            CurrentAmount = 0f;
        }
    }
}
