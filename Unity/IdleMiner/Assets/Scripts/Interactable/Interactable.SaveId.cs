#if UNITY_EDITOR
using UnityEditor;
using UnityEngine;

namespace Idler
{
    public partial class Interactable
    {
        private void OnValidate()
        {
            if (!gameObject.scene.IsValid()) return;
            if (PrefabUtility.IsPartOfPrefabAsset(gameObject)) return;

            if (string.IsNullOrEmpty(saveId) || IsDuplicateInScene())
            {
                saveId = System.Guid.NewGuid().ToString("N");
                EditorUtility.SetDirty(this);
            }
        }

        private bool IsDuplicateInScene()
        {
            foreach (var other in FindObjectsByType<Interactable>(FindObjectsSortMode.None))
            {
                if (other != this && other.gameObject.scene == gameObject.scene && other.saveId == saveId)
                    return true;
            }
            return false;
        }
    }
}
#endif
