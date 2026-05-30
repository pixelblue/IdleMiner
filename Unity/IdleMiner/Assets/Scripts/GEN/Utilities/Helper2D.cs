using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

namespace ANS_Core.Utilities
{
    public static class Helper2D
    {
        public static Vector3 GetWorldPosFromMouse()
        {
            var mousePosition = Input.mousePosition;
            mousePosition.z = Mathf.Abs(Camera.main.transform.position.z);
            
            var worldPos = Camera.main.ScreenToWorldPoint(mousePosition);
            worldPos.z = 0.0f;
            return worldPos;
        }

        public static List<Collider2D> GetAllCollFromMouse()
        {
            var hits = Physics2D.GetRayIntersectionAll(Camera.main.ScreenPointToRay(Input.mousePosition), 100).ToList();
            var returnValue = new List<Collider2D>();
            foreach (var hit in hits)
            {
                returnValue.Add(hit.collider);
            }

            return returnValue;
        }

        public static bool IsMouseInsideCollider(Collider2D coll)
        {
            var mousePos = GetWorldPosFromMouse();
            return IsPosInsideCollider(mousePos, coll);
        }        
        
        public static bool IsPosInsideCollider(Vector2 pos, Collider2D coll)
        {
            return (pos.x > coll.bounds.min.x &&
                    pos.x < coll.bounds.max.x &&
                    pos.y > coll.bounds.min.y &&
                    pos.y < coll.bounds.max.y);
        }
    }
}

