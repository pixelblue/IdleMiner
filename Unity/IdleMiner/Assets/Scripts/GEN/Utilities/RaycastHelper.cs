using System;
using System.Linq;
using UnityEngine;

namespace ANS_Core.Utilities
{
    public static class RaycastHelper
    {
        private static RaycastHit2D[] allRayHits;
        private static RaycastHit2D[] allHitsOutput;
        static RaycastHelper()
        {
            allRayHits = new RaycastHit2D[10];
            allHitsOutput = new RaycastHit2D[10];
        }
        
        #region GetRayHit2D with Collider
        /// <summary>
        /// Get RayHit on given collider if ray hits it
        /// </summary>
        /// <param name="source">start of the ray</param>
        /// <param name="dir">direction in with the ray looks for hits</param>
        /// <param name="collToHit">collider supposed to be hit</param>
        /// <returns>RayHit on given collider</returns>
        public static (bool isHit, RaycastHit2D rayHit) GetRayHit2D(Vector2 source, Vector3 dir, Collider2D collToHit)
        {
            Array.Clear(allRayHits, 0, allRayHits.Length);
            Physics2D.Raycast(source, dir, ContactFilter2D.noFilter, allRayHits, 9999.0f);

            for( int i = 0; i < allRayHits.Length; i++)
            {
                if (allRayHits[i] && allRayHits[i].collider == collToHit)
                {
                    return (isHit: true, rayHit: allRayHits[i]);
                }
            }

            return (isHit: false, rayHit: new RaycastHit2D());
        }
        
        /// <summary>
        /// Get RayHit on given collider if ray hits it ignoring own gameobject collider
        /// </summary>
        /// <param name="source">start of the ray</param>
        /// <param name="dir">direction in with the ray looks for hits</param>
        /// <param name="collToHit">collider supposed to be hit</param>
        /// <param name="ignoredSelf">gamobject calling this method</param>
        /// <returns>RayHit on given collider ignoring own gameobject collider</returns>
        public static (bool isHit, RaycastHit2D rayHit) GetRayHit2D(Vector2 source, Vector3 dir, Collider2D collToHit, Collider2D ignoredSelf)
        {
            Array.Clear(allRayHits, 0, allRayHits.Length);
            Physics2D.Raycast(source, dir, ContactFilter2D.noFilter, allRayHits, 9999.0f);
            for (int i = 0; i < allRayHits.Length; i++)
            {
                if (allRayHits[i] && allRayHits[i].collider == collToHit)
                {
                    if(allRayHits[i].collider != ignoredSelf)
                        return (isHit: true, rayHit: allRayHits[i]);
                }
            }

            return (isHit: false, rayHit: new RaycastHit2D());
        }
        #endregion
        
        #region GetRayHit2D with name
        /// <summary>
        /// Get RayHit on collider of the given name
        /// </summary>
        /// <param name="source">start of the ray</param>
        /// <param name="dir">direction in with the ray looks for hits</param>
        /// <param name="nameToHit">name of the collider supposed to be hit</param>
        /// <returns>RayHit on collider of the given name</returns>
        public static (bool isHit, RaycastHit2D rayHit) GetRayHit2D(Vector2 source, Vector3 dir, string nameToHit)
        {
            Array.Clear(allRayHits, 0, allRayHits.Length);
            Physics2D.Raycast(source, dir, ContactFilter2D.noFilter, allRayHits, 9999.0f);
            for(int i = 0; i < allRayHits.Length; i++)
            {
                if (allRayHits[i] && allRayHits[i].collider.name.ToLower().Contains(nameToHit) && allRayHits[i].collider.isTrigger == false)
                {
                    return (isHit: true, rayHit: allRayHits[i]);
                }
            }

            return (isHit: false, rayHit: new RaycastHit2D());
        }
        
        /// <summary>
        /// Get RayHit on collider of the given name ignoring own gameobject collider
        /// </summary>
        /// <param name="source">start of the ray</param>
        /// <param name="dir">direction in with the ray looks for hits</param>
        /// <param name="nameToHit">name of the collider supposed to be hit</param>
        /// <param name="ignoredSelf">gamobject calling this method</param>
        /// <returns>RayHit on collider of the given name ignoring own gameobject collider</returns>
        public static (bool isHit, RaycastHit2D rayHit) GetRayHit2D(Vector2 source, Vector3 dir, string nameToHit, Collider2D ignoredSelf)
        {
            Array.Clear(allRayHits, 0, allRayHits.Length);
            Physics2D.Raycast(source, dir, ContactFilter2D.noFilter, allRayHits, 9999.0f);
            for(int i = 0; i < allRayHits.Length; i++)
            {
                if (allRayHits[i] && allRayHits[i].collider.name.ToLower().Contains(nameToHit) && allRayHits[i].collider.isTrigger == false)
                {
                    if(allRayHits[i].collider != ignoredSelf)
                        return (isHit: true, rayHit: allRayHits[i]);
                }
            }

            return (isHit: false, rayHit: new RaycastHit2D());
        }
        #endregion
        
        #region GetAllRayHitsNonTrigger
        /// <summary>
        /// Get all non trigger hits in random order
        /// </summary>
        /// <param name="source">start of the ray</param>
        /// <param name="dir">direction in with the ray looks for hits</param>
        /// <param name="rayLength">length of how far the ray goes</param>
        /// <returns>array of unsorted non trigger ray hits</returns>
        public static RaycastHit2D[] GetAllRayHitsNonTrigger(Vector2 source, Vector3 dir, float rayLength = 999.0f)
        {
            Array.Clear(allRayHits, 0, allRayHits.Length);
            Array.Clear(allHitsOutput, 0, allHitsOutput.Length);
            Physics2D.Raycast(source, dir, ContactFilter2D.noFilter, allRayHits, rayLength);
            var nonTriggerCounter = 0;

            for (int i = 0; i < allRayHits.Length; i++)
            {
                if (allRayHits[i] && allRayHits[i].collider.isTrigger == false)
                {
                    allHitsOutput[nonTriggerCounter] = allRayHits[i];
                    nonTriggerCounter++;
                }
            }

            return allHitsOutput;
        }
        
        /// <summary>
        /// Get all non trigger hits in random order ignoring own gameobject collider
        /// </summary>
        /// <param name="source">start of the ray</param>
        /// <param name="dir">direction in with the ray looks for hits</param>
        /// <param name="ignoredSelf">gamobject calling this method</param>
        /// <param name="rayLength">length of how far the ray goes</param>
        /// <returns>array of unsorted non trigger ray hits ignoring own gameobject collider</returns>
        public static RaycastHit2D[] GetAllRayHitsNonTrigger(Vector2 source, Vector3 dir, Collider2D ignoredSelf, float rayLength = 999.0f)
        {
            Array.Clear(allRayHits, 0, allRayHits.Length);
            Array.Clear(allHitsOutput, 0, allHitsOutput.Length);
            Physics2D.Raycast(source, dir, ContactFilter2D.noFilter, allRayHits, rayLength);
            
            var nonTriggerCounter = 0;
            
            for (int i = 0; i < allRayHits.Length; i++)
            {
                if (allRayHits[i] && allRayHits[i].collider.isTrigger == false && allRayHits[i].collider != ignoredSelf)
                {
                    allHitsOutput[nonTriggerCounter] = allRayHits[i];
                    nonTriggerCounter++;
                }
            }
            
            return allHitsOutput;
        }
        #endregion
        
        #region GetAllRayHitsNonTriggerSorted
        /// <summary>
        /// Get all non trigger hits sorted by distance to source
        /// </summary>
        /// <param name="closestFirst">sorted form closest to furthest distance</param>
        /// <param name="source">start of the ray</param>
        /// <param name="dir">direction in with the ray looks for hits</param>
        /// <param name="rayLength">length of how far the ray goes</param>
        /// <returns>array of sorted non trigger ray hits</returns>
        public static RaycastHit2D[] GetAllRayHitsNonTriggerSorted(bool closestFirst, Vector2 source, Vector3 dir,
            float rayLength = 999.0f)
        {
            var hitArray = GetAllRayHitsNonTrigger(source, dir, rayLength);

            if (closestFirst)
            {
                Array.Sort(hitArray, (hitX, hitY) =>
                {
                    if(!hitX)
                        return hitY.distance.CompareTo(hitX.distance);
                    return hitX.distance.CompareTo(hitY.distance);
                });
            }
            else
            {
                Array.Sort(hitArray, (hitX, hitY) =>
                {
                    if(!hitX)
                        return hitX.distance.CompareTo(hitY.distance);
                    return hitY.distance.CompareTo(hitX.distance);
                });
            }
            
            if (!hitArray[0])
                return null;
            
            return hitArray;
        }
        
        /// <summary>
        /// Get all non trigger hits sorted by distance to source ignoring own gameobject collider
        /// </summary>
        /// <param name="closestFirst">sorted form closest to furthest distance</param>
        /// <param name="source">start of the ray</param>
        /// <param name="dir">direction in with the ray looks for hits</param>
        /// <param name="ignoredSelf">gamobject calling this method</param>
        /// <param name="rayLength">length of how far the ray goes</param>
        /// <returns>array of sorted non trigger ray hits ignoring own gameobject collider</returns>
        public static RaycastHit2D[] GetAllRayHitsNonTriggerSorted(bool closestFirst, Vector2 source, Vector3 dir,
            Collider2D ignoredSelf, float rayLength = 999.0f)
        {
            var hitArray = GetAllRayHitsNonTrigger(source, dir, ignoredSelf, rayLength);
            
            if (closestFirst)
            {
                Array.Sort(hitArray, (hitX, hitY) =>
                {
                    if(!hitX)
                        return hitY.distance.CompareTo(hitX.distance);
                    return hitX.distance.CompareTo(hitY.distance);
                });
            }
            else
            {
                Array.Sort(hitArray, (hitX, hitY) =>
                {
                    if(!hitX)
                        return hitX.distance.CompareTo(hitY.distance);
                    return hitY.distance.CompareTo(hitX.distance);
                });
            }
            
            if (!hitArray[0])
                return null;
            
            return hitArray;
        }
        #endregion
        
        #region GetClosestRayHit
        /// <summary>
        /// Get closest RayHit to source
        /// </summary>
        /// <param name="source">start of the ray</param>
        /// <param name="dir">direction in with the ray looks for hits</param>
        /// <param name="rayLength">length of how far the ray goes</param>
        /// <returns>closest RayHit to source</returns>
        public static RaycastHit2D GetClosestRayHit(Vector2 source, Vector3 dir, float rayLength = 999.0f)
        {
            var hitArray = GetAllRayHitsNonTriggerSorted(true, source, dir, rayLength);
            if (hitArray == null)
                return new RaycastHit2D();
            return hitArray[0];
        }
        
        /// <summary>
        /// Get closest RayHit to source ignoring own gameobject collider ignoring own gameobject collider
        /// </summary>
        /// <param name="source">start of the ray</param>
        /// <param name="dir">direction in with the ray looks for hits</param>
        /// <param name="ignoredSelf">gamobject calling this method</param>
        /// <param name="rayLength">length of how far the ray goes</param>
        /// <returns>closest RayHit to source ignoring own gameobject collider</returns>
        public static RaycastHit2D GetClosestRayHit(Vector2 source, Vector3 dir, Collider2D ignoredSelf, float rayLength = 999.0f)
        {
            var hitArray = GetAllRayHitsNonTriggerSorted(true, source, dir, ignoredSelf, rayLength);
            if (hitArray == null)
            {
                return new RaycastHit2D();
            }
            
            return hitArray[0];
        }
        #endregion
    }
}
