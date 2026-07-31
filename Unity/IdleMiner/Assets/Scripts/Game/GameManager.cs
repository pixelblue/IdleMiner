using System;
using ANS_Core.FSM;
using ANS.Common.ServiceLocator;
using UnityEngine;

namespace Idler
{
    public class GameManager : MonoBehaviour, IGame
    {
        [field: SerializeField] public GameData Data { get; private set; }
        [field: SerializeField] public FSM_StateManager Fsm { get; private set; }

        public GlobalPropertyStats GlobalPropertyStats { get; private set; }

        public void InitializeStats()
        {
            GlobalPropertyStats = new GlobalPropertyStats();
            GlobalPropertyStats.Initialize(Data);
        }

        private void Start()
        {
            Fsm.enabled = true;
        }

        public void Save(SaveData data)
        {
            var states = GlobalPropertyStats.All();
            data.globalProperties = new PropertySaveEntry[states.Length];
            for (int i = 0; i < states.Length; i++)
                data.globalProperties[i] = new PropertySaveEntry { propertyName = states[i].Definition.propertyName };
            foreach (var state in states)
                state.Save(data.globalProperties);

            data.interactableTypes = new InteractableTypeSaveEntry[Data.allInteractables.Length];
            for (int i = 0; i < Data.allInteractables.Length; i++)
                data.interactableTypes[i] = new InteractableTypeSaveEntry { interactableName = Data.allInteractables[i].name };
            foreach (var interactableData in Data.allInteractables)
                interactableData.Save(data);
        }

        public void Load(SaveData data)
        {
            foreach (var state in GlobalPropertyStats.All())
                state.Load(data.globalProperties);
            foreach (var interactableData in Data.allInteractables)
                interactableData.Load(data);
        }

        public void Reset()
        {
            foreach (var state in GlobalPropertyStats.All())
                state.Reset();
            foreach (var interactableData in Data.allInteractables)
                interactableData.Reset();
        }
    }
    
}
