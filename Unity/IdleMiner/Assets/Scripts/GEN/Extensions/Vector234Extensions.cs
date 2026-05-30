using UnityEngine;

namespace ANS_Core.Extensions
{
    public static class Vector234Extensions
    {
        // Vector2
        public static Vector2 SetX(this Vector2 aVec, float aXValue)
        {
            aVec.x = aXValue;
            return aVec;
        }
        public static Vector2 SetY(this Vector2 aVec, float aYValue)
        {
            aVec.y = aYValue;
            return aVec;
        }

        // Vector3
        public static Vector3 SetX(this Vector3 aVec, float aXValue)
        {
            aVec.x = aXValue;
            return aVec;
        }
        public static Vector3 SetY(this Vector3 aVec, float aYValue)
        {
            aVec.y = aYValue;
            return aVec;
        }
        public static Vector3 SetZ(this Vector3 aVec, float aZValue)
        {
            aVec.z = aZValue;
            return aVec;
        }

        // Vector4
        public static Vector4 SetX(this Vector4 aVec, float aXValue)
        {
            aVec.x = aXValue;
            return aVec;
        }
        public static Vector4 SetY(this Vector4 aVec, float aYValue)
        {
            aVec.y = aYValue;
            return aVec;
        }
        public static Vector4 SetZ(this Vector4 aVec, float aZValue)
        {
            aVec.z = aZValue;
            return aVec;
        }
        public static Vector4 SetW(this Vector4 aVec, float aWValue)
        {
            aVec.w = aWValue;
            return aVec;
        }
    }
}
