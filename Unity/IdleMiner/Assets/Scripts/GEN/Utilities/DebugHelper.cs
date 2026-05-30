using UnityEngine;

namespace ANS_Core.Utilities
{
    public static class DebugHelper
    {
        public static void CreateDebugCube(Vector3 pos, float scale = 0.1f)
        {
            var cube = GameObject.CreatePrimitive(PrimitiveType.Cube);
            cube.transform.position = pos;
            cube.transform.localScale = Vector3.one * scale;
            cube.GetComponent<MeshRenderer>().material.color = Color.red;
        }
    }
}
