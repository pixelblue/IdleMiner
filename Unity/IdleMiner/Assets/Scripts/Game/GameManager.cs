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

        private void Start()
        {
            Fsm.enabled = true;
        }

        public void Save(SaveData data)
        {
            var props = Data.AllProperties();
            data.leveledProperties = new LeveledPropertySaveEntry[props.Length];
            for (int i = 0; i < props.Length; i++)
                data.leveledProperties[i] = new LeveledPropertySaveEntry { propertyName = props[i].propertyName };
            foreach (var prop in props)
                prop.Save(data);
        }

        public void Load(SaveData data)
        {
            foreach (var prop in Data.AllProperties())
                prop.Load(data);
        }

        public void Reset()
        {
            foreach (var prop in Data.AllProperties())
                prop.Reset();
        }
    }
    
}
