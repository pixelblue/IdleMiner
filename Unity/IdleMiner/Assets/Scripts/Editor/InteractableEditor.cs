using UnityEditor;
using UnityEngine;

namespace Idler.Editor
{
    [CustomEditor(typeof(Interactable), true)]
    public class InteractableEditor : UnityEditor.Editor
    {
        public override void OnInspectorGUI()
        {
            DrawDefaultInspector();

            if (!Application.isPlaying) return;

            var interactable = (Interactable)target;
            if (interactable.Properties == null || interactable.Properties.Length == 0) return;

            EditorGUILayout.Space();
            EditorGUILayout.LabelField("Properties", EditorStyles.boldLabel);

            // Header
            EditorGUILayout.BeginHorizontal();
            EditorGUILayout.LabelField("Name",  EditorStyles.miniLabel, GUILayout.Width(160));
            EditorGUILayout.LabelField("Level", EditorStyles.miniLabel, GUILayout.Width(60));
            EditorGUILayout.LabelField("Value", EditorStyles.miniLabel, GUILayout.Width(80));
            EditorGUILayout.EndHorizontal();

            EditorGUI.DrawRect(GUILayoutUtility.GetRect(0, 1), new Color(0.3f, 0.3f, 0.3f));

            GUI.enabled = false;
            foreach (var state in interactable.Properties)
            {
                EditorGUILayout.BeginHorizontal();
                EditorGUILayout.LabelField(state.propertyName,                           GUILayout.Width(160));
                EditorGUILayout.LabelField($"{state.CurrentLevel} / {state.MaxLevel}",   GUILayout.Width(60));
                EditorGUILayout.FloatField(state.Value,                                  GUILayout.Width(80));
                EditorGUILayout.EndHorizontal();
            }
            GUI.enabled = true;
        }
    }
}
