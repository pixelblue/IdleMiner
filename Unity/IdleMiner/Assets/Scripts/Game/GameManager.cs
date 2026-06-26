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

        public GlobalPropertyStats Stats { get; private set; }

        public void InitializeStats()
        {
            Stats = new GlobalPropertyStats();
            Stats.Initialize(Data);
        }

        private void Start()
        {
            Fsm.enabled = true;
        }

        public void Save(SaveData data)
        {
            var states = Stats.All();
            data.leveledProperties = new LeveledPropertySaveEntry[states.Length];
            for (int i = 0; i < states.Length; i++)
                data.leveledProperties[i] = new LeveledPropertySaveEntry { propertyName = states[i].Definition.propertyName };
            foreach (var state in states)
                state.Save(data.leveledProperties);
        }

        public void Load(SaveData data)
        {
            foreach (var state in Stats.All())
                state.Load(data.leveledProperties);
        }

        public void Reset()
        {
            foreach (var state in Stats.All())
                state.Reset();
        }
    }
    
}
