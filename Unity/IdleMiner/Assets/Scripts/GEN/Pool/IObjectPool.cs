using UnityEngine;

namespace ANS.Common
{
    public interface IObjectPool
    {
        Component Get(Vector3 position);
        void Release(Component instance);
    }

}