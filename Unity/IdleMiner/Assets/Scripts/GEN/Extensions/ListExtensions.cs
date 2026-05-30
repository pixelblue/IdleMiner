using System.Collections.Generic;
using UnityEngine;
using Random = System.Random;

namespace ANS_Core.Extensions
{
    public static class ListExtensions
    {
        /// <summary>
        /// Returns a random element and never uses the element twice
        /// </summary>
        public static T GetRandomElement<T>(this List<T> origList, ref List<T> modifiedList, Random rng)
        {
            //Debug.Log("-------");
            //Debug.Log("origList.count is " + origList.Count);
            //Debug.Log("modifiedList.count is " + modifiedList.Count);
            var selectedElement = modifiedList[rng.Next(0, modifiedList.Count)];
            //Debug.Log("selectedElement is " + selectedElement);

            // update the modified list
            modifiedList.Remove(selectedElement);
            
            // generate a new list again if there aren't any elements in it anymore
            if (modifiedList.Count == 0)
            {
                //Debug.Log("modified list is empty. Now adding the whole range again");
                modifiedList = new List<T>();
                modifiedList.AddRange(origList);

                if (modifiedList.Count > 1)
                {
                    modifiedList.Remove(selectedElement);
                }
            }
            
            //Debug.Log("ModifiedList.count AFTER is " + modifiedList.Count);
            
            // and finally return the selected Element
            return selectedElement;
        }
    }
}