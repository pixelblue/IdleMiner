using System.IO;
using UnityEditor;
using UnityEngine;

namespace Idler.Editor
{
    public static class SaveDataTools
    {
        private static string SavePath => Path.Combine(Application.persistentDataPath, "save.json");

        [MenuItem("Tools/Delete Save Data")]
        private static void DeleteSaveData()
        {
            if (!File.Exists(SavePath))
            {
                Debug.Log("No save file found.");
                return;
            }

            if (EditorUtility.DisplayDialog("Delete Save Data",
                    $"Delete save file at:\n{SavePath}?", "Delete", "Cancel"))
            {
                File.Delete(SavePath);
                Debug.Log("Save file deleted.");
            }
        }
    }
}
