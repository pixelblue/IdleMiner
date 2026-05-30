using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace ANS.Utilities
{
    public static class MeshHelper
    {
        public static Vector3 UvTo3D(Transform transform, Mesh mesh, Vector2 uv)
        {
            var tris= mesh.triangles;
            var uvs= mesh.uv;
            var verts = mesh.vertices;
            for (var i = 0; i < tris.Length; i += 3)
            {
                var u1= uvs[tris[i]]; // get the triangle UVs
                var u2= uvs[tris[i+1]];
                var u3= uvs[tris[i+2]];
                // calculate triangle area - if zero, skip it
                var a = Area(u1, u2, u3); if (a == 0) continue;
                // calculate barycentric coordinates of u1, u2 and u3
                // if anyone is negative, point is outside the triangle: skip it
                var a1 = Area(u2, u3, uv)/a; if (a1 < 0) continue;
                var a2 = Area(u3, u1, uv)/a; if (a2 < 0) continue;
                var a3 = Area(u1, u2, uv)/a; if (a3 < 0) continue;
                // point inside the triangle - find mesh position by interpolation...
                var p3D = a1*verts[tris[i]]+a2*verts[tris[i+1]]+a3*verts[tris[i+2]];
                // and return it in world coordinates:
                return transform.TransformPoint(p3D);
            }
            // point outside any uv triangle: return Vector3.zero
            return Vector3.zero;
        }
 
        // calculate signed triangle area using a kind of "2D cross product":
        private static float Area(Vector2 p1, Vector2 p2, Vector2 p3)
        {
            var v1 = p1 - p3;
            var v2 = p2 - p3;
            return (v1.x * v2.y - v1.y * v2.x)/2;
        }
    }
}
