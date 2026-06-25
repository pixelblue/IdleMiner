using UnityEditor;
using UnityEngine;

namespace Idler.Editor
{
    public class LeveledPropertyTableEditor : EditorWindow
    {
        private static readonly float[] ColWidths = { 110, 140, 60, 120, 70, 75, 75, 70, 75, 80, 75 };
        private static readonly string[] Headers =
            { "Name", "Info", "Icon", "Cost Resource", "Unlock Lvl", "Base Value", "Increment", "Max Level", "Cost Base", "Cost Mult", "Max Value" };

        private LeveledProperty[] properties;
        private SerializedObject[] serializedObjects;
        private Vector2 scrollPos;

        private Color rowColorA;
        private Color rowColorB;

        [MenuItem("Tools/Leveled Property Table")]
        static void Open()
        {
            var window = GetWindow<LeveledPropertyTableEditor>("Leveled Properties");
            window.minSize = new Vector2(600, 300);
        }

        private void OnEnable()
        {
            rowColorA = EditorGUIUtility.isProSkin
                ? new Color(0.22f, 0.22f, 0.22f)
                : new Color(0.85f, 0.85f, 0.85f);
            rowColorB = EditorGUIUtility.isProSkin
                ? new Color(0.19f, 0.19f, 0.19f)
                : new Color(0.78f, 0.78f, 0.78f);
            LoadProperties();
        }

        private void LoadProperties()
        {
            var guids = AssetDatabase.FindAssets("t:LeveledProperty");
            properties = new LeveledProperty[guids.Length];
            serializedObjects = new SerializedObject[guids.Length];
            for (int i = 0; i < guids.Length; i++)
            {
                var path = AssetDatabase.GUIDToAssetPath(guids[i]);
                properties[i] = AssetDatabase.LoadAssetAtPath<LeveledProperty>(path);
                serializedObjects[i] = new SerializedObject(properties[i]);
            }
        }

        private void OnGUI()
        {
            EditorGUILayout.BeginHorizontal(EditorStyles.toolbar);
            if (GUILayout.Button("Refresh", EditorStyles.toolbarButton, GUILayout.Width(60)))
                LoadProperties();
            GUILayout.FlexibleSpace();
            EditorGUILayout.EndHorizontal();

            scrollPos = EditorGUILayout.BeginScrollView(scrollPos);

            DrawHeader();

            if (properties != null)
                for (int i = 0; i < properties.Length; i++)
                    DrawRow(i);

            EditorGUILayout.EndScrollView();
        }

        private void DrawHeader()
        {
            EditorGUILayout.BeginHorizontal(EditorStyles.toolbar);
            for (int i = 0; i < Headers.Length; i++)
                GUILayout.Label(Headers[i], EditorStyles.boldLabel, GUILayout.Width(ColWidths[i]));
            EditorGUILayout.EndHorizontal();
        }

        private void DrawRow(int index)
        {
            var so = serializedObjects[index];
            var prop = properties[index];
            so.Update();

            var bg = index % 2 == 0 ? rowColorA : rowColorB;
            var rect = EditorGUILayout.BeginHorizontal();
            EditorGUI.DrawRect(rect, bg);

            EditorGUI.BeginChangeCheck();

            PropField(so, "propertyName",          ColWidths[0]);
            PropField(so, "propertyInfo",           ColWidths[1]);
            PropField(so, "propertyIcon",           ColWidths[2]);
            PropField(so, "costResource",           ColWidths[3]);
            PropField(so, "unlockAtLevel",          ColWidths[4]);
            PropField(so, "baseValue",              ColWidths[5]);
            PropField(so, "increment",              ColWidths[6]);
            PropField(so, "maxLevel",               ColWidths[7]);
            PropField(so, "upgradeCostBase",        ColWidths[8]);
            PropField(so, "upgradeCostMultiplier",  ColWidths[9]);

            // Max Value — read-only computed label
            EditorGUI.BeginDisabledGroup(true);
            EditorGUILayout.FloatField(prop.MaxValue, GUILayout.Width(ColWidths[10]));
            EditorGUI.EndDisabledGroup();

            if (EditorGUI.EndChangeCheck())
                so.ApplyModifiedProperties();

            EditorGUILayout.EndHorizontal();
        }

        private static void PropField(SerializedObject so, string fieldName, float width)
        {
            EditorGUILayout.PropertyField(
                so.FindProperty(fieldName),
                GUIContent.none,
                GUILayout.Width(width));
        }
    }
}
