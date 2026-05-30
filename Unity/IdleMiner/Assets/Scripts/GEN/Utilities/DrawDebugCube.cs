using UnityEngine;

namespace ANS_Core.Utilities
{
    public class DrawDebugCube : MonoBehaviour
    {
        public bool useBoxCollider = false;
        public Vector3 size;
        public Vector3 offset;
        public Color color;

        private BoxCollider2D boxColl;

        void OnDrawGizmos()
        {
            Gizmos.color = color;
            Gizmos.DrawCube(this.transform.position + offset, size);

            if (useBoxCollider)
            {
                if (boxColl == null)
                    boxColl = GetComponent<BoxCollider2D>();

                Gizmos.DrawCube(new Vector3(
                    transform.position.x + boxColl.offset.x,
                    transform.position.y + boxColl.offset.y,
                    transform.position.z), new Vector3(boxColl.bounds.size.x, boxColl.bounds.size.y, 1.0f));
            }
        }
    }
}
