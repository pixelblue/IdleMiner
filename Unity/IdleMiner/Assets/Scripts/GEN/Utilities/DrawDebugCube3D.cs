using UnityEngine;

namespace ANS_Core.Utilities
{
    public class DrawDebugCube3D : MonoBehaviour
    {
        public bool useBoxCollider = false;
        public bool setManual = false;
        public Vector3 size;
        public Vector3 offset;
        public Color color;

        private BoxCollider boxColl;

        void OnDrawGizmos()
        {
            Gizmos.color = color;

            Gizmos.matrix = transform.localToWorldMatrix;
            Gizmos.DrawCube(Vector3.zero, Vector3.one);
            
            if (setManual)
            {
                Gizmos.DrawCube(this.transform.position + offset, size);
            }

            if (useBoxCollider)
            {
                if (boxColl == null)
                    boxColl = GetComponent<BoxCollider>();

                Gizmos.DrawCube(new Vector3(
                    transform.position.x + boxColl.center.x,
                    transform.position.y + boxColl.center.y,
                    transform.position.z + boxColl.center.z), 
                    new Vector3(boxColl.size.x, boxColl.size.y, boxColl.size.z));
            }
        }
    }
}
