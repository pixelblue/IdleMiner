using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

namespace ANS_Core.Utilities
{
    public static class GroupSelectionTool
    {
#if UNITY_EDITOR
        [MenuItem("ANS/Group Selection %g")]
        static void GroupSelection()
        {
            if (Selection.activeTransform == null)
            {
                EditorUtility.DisplayDialog("Warning", "No object was selected", "ok");
                return;
            }

            var allSelectedGameObjects = Selection.gameObjects;
            var allSelectedNonPrefabs = new List<GameObject>();

            // store non prefabs to group them
            foreach (var selectedGameObject in allSelectedGameObjects)
            {
                if (!PrefabUtility.IsPartOfAnyPrefab(selectedGameObject) || PrefabUtility.IsAnyPrefabInstanceRoot(selectedGameObject))
                {
                    allSelectedNonPrefabs.Add(selectedGameObject);
                }
                else
                {
                    Debug.LogError(selectedGameObject.name +  " is indside a prefab. Prefabs can't be changed with the GroupSelectionTool.");
                    return;
                }
            }

            if(allSelectedNonPrefabs.Count == 0)
                return;
            
            var groupObject = CreateGroupObject(allSelectedNonPrefabs.ToArray());
            
            DeleteGroupObjectIfEmpty(groupObject);
        }

        private static Transform CreateGroupObject(GameObject[] allSelectedGameObjects)
        {
            var groupObjectTransform = new GameObject("GroupObject").transform;
            groupObjectTransform.position = GetParentCenterPosition(allSelectedGameObjects);

            // set parent of groupobject
            if (Selection.activeTransform.parent != null)
            {
                groupObjectTransform.SetParent(Selection.activeTransform.parent);
            }

            // set parent of all selected objects
            foreach (var selected in allSelectedGameObjects)
            {
                selected.transform.SetParent(groupObjectTransform);
            }
            
            return groupObjectTransform;
        }

        private static Vector3 GetParentCenterPosition(GameObject[] allSelectedGameObjects)
        {
            var centerPosition = Vector3.zero;

            foreach (var selected in allSelectedGameObjects)
            {
                centerPosition += selected.transform.position;
            }

            // return average of all child positions
            return centerPosition /= allSelectedGameObjects.Length;
        }

        private static void DeleteGroupObjectIfEmpty(Transform groupObject)
        {
            if (groupObject.childCount == 0)
            {
                GameObject.DestroyImmediate(groupObject.gameObject);
                Debug.LogWarning("Empty group deleted.");
            }
        }
#endif
    }
}