using UnityEngine;

namespace ANS_Core.Extensions
{
    public static class ColliderExtensions
    {
        /// <summary>
        /// Returns the World positions of the bounds of a collider 
        /// </summary>
        public static Bounds GetWorldBounds(this Collider2D coll)
        {
            var collCenter = coll.transform.TransformPoint(coll.bounds.center);
            var collSize = coll.bounds.size;
            var worldBounds = new Bounds(collCenter, collSize);
            return worldBounds;
        }
    }
}
