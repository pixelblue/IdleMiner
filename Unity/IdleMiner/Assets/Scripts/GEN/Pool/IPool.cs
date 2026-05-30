using ANS.Common.ServiceLocator;
using UnityEngine;

namespace ANS.Common
{
    public interface IPool : IGameService
    {
        Component Spawn(string name, Vector3 position);
        void Release(string name, Component obj);
        bool TryAddPoolDefinition(string name, GameObject prefab, int initialSize = 10);
        void CreatePools();
        void ClearPoolsAndDefinitions();
    }
}