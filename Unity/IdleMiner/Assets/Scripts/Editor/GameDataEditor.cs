using System.Collections.Generic;
using System.IO;
using UnityEditor;
using UnityEngine;

namespace Idler.Editor
{
    public class GameDataEditor : EditorWindow
    {
        // label | SO ref | output icon | cost res | cost icon | unlocks after (SO) | after level | base | incr | max lvl | cost base | cost mult | scaling | curve | max val | show ui | ping
        private static readonly float[] W = { 110, 195, 44, 165, 30, 150, 42, 55, 55, 50, 60, 60, 80, 55, 55, 38, 22 };
        private static readonly string[] Headers =
            { "Property", "Definition", "Output Icon", "Cost Res", "Cost Icon", "Unlocks After", "Lvl", "Base", "Increment", "Max Lvl", "Cost Base", "Cost Mult", "Scaling", "Curve", "Max Val", "Show UI" };

        private GameData gameData;
        private SerializedObject gameDataSO;
        private Vector2 scrollPos;
        private bool showObjectives    = true;
        private bool showGlobalProps   = true;
        private bool showInteractables = true;
        private bool showResources     = true;
        private bool showRaw           = true;
        private bool showRefined       = true;
        private bool showConstructed   = true;

        private readonly Dictionary<Object, bool>             foldouts   = new();
        private readonly Dictionary<Object, SerializedObject> soCache    = new();
        private readonly Dictionary<ResourceData, float>      addAmounts = new();

        [MenuItem("Tools/Game Data Editor")]
        static void Open()
        {
            var w = GetWindow<GameDataEditor>("Game Data");
            w.minSize = new Vector2(840, 400);
        }

        private void OnEnable()
        {
            Reload();
            EditorApplication.update += Repaint;
        }

        private void OnDisable()
        {
            EditorApplication.update -= Repaint;
        }

        private void Reload()
        {
            soCache.Clear();
            var guids = AssetDatabase.FindAssets("t:GameData");
            if (guids.Length == 0) return;
            gameData   = AssetDatabase.LoadAssetAtPath<GameData>(AssetDatabase.GUIDToAssetPath(guids[0]));
            gameDataSO = new SerializedObject(gameData);
        }

        private SerializedObject SO(Object obj)
        {
            if (!soCache.TryGetValue(obj, out var so) || so == null)
                soCache[obj] = so = new SerializedObject(obj);
            return so;
        }

        // ── MAIN ─────────────────────────────────────────────────────────────────────

        private void OnGUI()
        {
            EditorGUILayout.BeginHorizontal(EditorStyles.toolbar);
            if (GUILayout.Button("Refresh", EditorStyles.toolbarButton, GUILayout.Width(60))) Reload();
            if (GUILayout.Button("Delete Save Data", EditorStyles.toolbarButton, GUILayout.Width(110)))
            {
                var path = System.IO.Path.Combine(Application.persistentDataPath, "save.json");
                if (System.IO.File.Exists(path)) { System.IO.File.Delete(path); Debug.Log($"Save file deleted: {path}"); }
                else Debug.Log("No save file found.");
            }
            GUILayout.FlexibleSpace();
            EditorGUILayout.EndHorizontal();

            if (gameData == null) { EditorGUILayout.HelpBox("No GameData asset found.", MessageType.Warning); return; }

            scrollPos = EditorGUILayout.BeginScrollView(scrollPos);
            DrawObjectivesSection();
            DrawGlobalPropertiesSection();
            DrawInteractablesSection();
            DrawResourcesSection();
            EditorGUILayout.EndScrollView();
        }

        // ── OBJECTIVES ───────────────────────────────────────────────────────────────

        private void DrawObjectivesSection()
        {
            showObjectives = SectionHeader("OBJECTIVES", showObjectives);
            if (!showObjectives || gameData.objectives == null) return;

            var configSO   = SO(gameData.objectives);
            configSO.Update();
            var levelsProp = configSO.FindProperty("levels");

            for (int i = 0; i < levelsProp.arraySize; i++)
            {
                var level = levelsProp.GetArrayElementAtIndex(i).objectReferenceValue as ObjectiveLevelData;
                if (level == null) continue;

                EditorGUILayout.BeginVertical(EditorStyles.helpBox);
                EditorGUILayout.BeginHorizontal();
                Foldout(level, $"Stage {i + 1}");
                if (SmallRemoveButton() && Confirm($"Remove Stage {i + 1}?"))
                {
                    levelsProp.DeleteArrayElementAtIndex(i);
                    configSO.ApplyModifiedProperties();
                    EditorGUILayout.EndHorizontal(); EditorGUILayout.EndVertical(); break;
                }
                EditorGUILayout.EndHorizontal();

                if (GetFoldout(level)) DrawObjectiveLevel(level);
                EditorGUILayout.EndVertical();
            }

            configSO.ApplyModifiedProperties();
            PlusButton("Add Stage", () => AddStage(configSO, levelsProp));
        }

        private void DrawObjectiveLevel(ObjectiveLevelData level)
        {
            var so       = SO(level);
            so.Update();
            var objsProp = so.FindProperty("objectives");

            EditorGUILayout.BeginHorizontal();
            MiniLabel("Objective", 195); MiniLabel("Description", 180); MiniLabel("Type", 110); MiniLabel("Resource", 165); MiniLabel("Amount", 65);
            EditorGUILayout.EndHorizontal();

            for (int i = 0; i < objsProp.arraySize; i++)
            {
                var elemProp = objsProp.GetArrayElementAtIndex(i);
                EditorGUILayout.BeginHorizontal();

                // SO reference — drag to assign
                EditorGUI.BeginChangeCheck();
                EditorGUILayout.PropertyField(elemProp, GUIContent.none, GUILayout.Width(195));
                if (EditorGUI.EndChangeCheck()) so.ApplyModifiedProperties();

                var obj = elemProp.objectReferenceValue as ObjectiveData;
                if (obj != null)
                {
                    var oSO = SO(obj);
                    oSO.Update();
                    EditorGUI.BeginChangeCheck();
                    Field(oSO, "description", 180); Field(oSO, "type", 110);
                    Field(oSO, "targetResource", 165); Field(oSO, "targetAmount", 65);
                    if (EditorGUI.EndChangeCheck()) oSO.ApplyModifiedProperties();
                }

                if (SmallRemoveButton()) { objsProp.DeleteArrayElementAtIndex(i); so.ApplyModifiedProperties(); EditorGUILayout.EndHorizontal(); break; }
                EditorGUILayout.EndHorizontal();
            }

            so.ApplyModifiedProperties();
            PlusButton("Add Objective", () => AddObjective(so, objsProp));
        }

        // ── GLOBAL PROPERTIES ────────────────────────────────────────────────────────

        private void DrawGlobalPropertiesSection()
        {
            showGlobalProps = SectionHeader("GLOBAL PROPERTIES", showGlobalProps);
            if (!showGlobalProps) return;

            gameDataSO.Update();
            PropTableHeader();
            PropRow("Hit Rate",   gameDataSO.FindProperty("HitRate"));
            PropRow("Hit Radius", gameDataSO.FindProperty("HitRadius"));
            gameDataSO.ApplyModifiedProperties();
            EditorGUILayout.Space(4);
        }

        // ── INTERACTABLES ─────────────────────────────────────────────────────────────

        private void DrawInteractablesSection()
        {
            showInteractables = SectionHeader("INTERACTABLES", showInteractables);
            if (!showInteractables) return;

            gameDataSO.Update();
            var arrProp = gameDataSO.FindProperty("allInteractables");

            for (int i = 0; i < arrProp.arraySize; i++)
            {
                var idata = arrProp.GetArrayElementAtIndex(i).objectReferenceValue as InteractableData;
                if (idata == null) continue;

                EditorGUILayout.BeginVertical(EditorStyles.helpBox);
                EditorGUILayout.BeginHorizontal();
                Foldout(idata, string.IsNullOrEmpty(idata.interactableName) ? "(unnamed)" : idata.interactableName);
                if (SmallRemoveButton() && Confirm($"Remove '{idata.interactableName}'?"))
                {
                    arrProp.DeleteArrayElementAtIndex(i);
                    gameDataSO.ApplyModifiedProperties();
                    EditorGUILayout.EndHorizontal(); EditorGUILayout.EndVertical(); break;
                }
                EditorGUILayout.EndHorizontal();

                if (GetFoldout(idata)) DrawInteractableProps(idata);
                EditorGUILayout.EndVertical();
            }

            gameDataSO.ApplyModifiedProperties();
            PlusButton("Add Interactable", () => AddInteractable(arrProp));
            EditorGUILayout.Space(4);
        }

        private void DrawInteractableProps(InteractableData idata)
        {
            var so   = SO(idata);
            so.Update();
            var iter = so.GetIterator();
            bool enter = true;
            bool wroteHeader = false;

            while (iter.NextVisible(enter))
            {
                enter = false;
                if (iter.name == "m_Script") continue;
                if (iter.propertyType != SerializedPropertyType.ObjectReference) continue;
                if (iter.objectReferenceValue != null && iter.objectReferenceValue is not PropertyDefinition) continue;

                if (!wroteHeader) { PropTableHeader(); wroteHeader = true; }
                PropRow(ObjectNames.NicifyVariableName(iter.name), iter.Copy());
            }
        }

        // ── RESOURCES ─────────────────────────────────────────────────────────────────

        private void DrawResourcesSection()
        {
            showResources = SectionHeader("RESOURCES", showResources);
            if (!showResources) return;

            DrawResourceTier("Raw Resources",         gameData.rawResources,         ref showRaw);
            DrawResourceTier("Refined Resources",     gameData.refinedResources,     ref showRefined);
            DrawResourceTier("Constructed Resources", gameData.constructedResources, ref showConstructed);
            EditorGUILayout.Space(4);
        }

        private void DrawResourceTier(string label, System.Collections.Generic.List<ResourceData> resources, ref bool expanded)
        {
            expanded = EditorGUILayout.Foldout(expanded, label, true, EditorStyles.foldoutHeader);
            if (!expanded || resources == null) return;

            EditorGUILayout.BeginHorizontal(EditorStyles.toolbar);
            MiniLabel("Resource",       160);
            MiniLabel("Current Amount", 110);
            MiniLabel("Amount to Add",  100);
            MiniLabel("",               55);
            EditorGUILayout.EndHorizontal();

            foreach (var resource in resources)
            {
                if (resource == null) continue;
                if (!addAmounts.ContainsKey(resource)) addAmounts[resource] = 100f;

                EditorGUILayout.BeginHorizontal();

                // Icon + name
                if (resource.icon != null)
                    GUILayout.Label(AssetPreview.GetAssetPreview(resource.icon) ?? AssetPreview.GetMiniThumbnail(resource.icon),
                        GUILayout.Width(18), GUILayout.Height(18));
                else
                    GUILayout.Space(18);
                GUILayout.Label(resource.resourceName, GUILayout.Width(138));

                // Current amount — read directly from SO (live in play mode)
                GUI.enabled = false;
                EditorGUILayout.FloatField(resource.CurrentAmount, GUILayout.Width(110));
                GUI.enabled = true;

                // Amount to add
                addAmounts[resource] = EditorGUILayout.FloatField(addAmounts[resource], GUILayout.Width(100));

                // Add button — only functional in play mode
                GUI.enabled = Application.isPlaying;
                if (GUILayout.Button("Add", GUILayout.Width(50)) && Application.isPlaying)
                {
                    var resMgr = ANS.Common.ServiceLocator.ServiceLocator.Current.Get<IResourceManager>();
                    resMgr.Add(resource, addAmounts[resource]);
                }
                GUI.enabled = true;

                EditorGUILayout.EndHorizontal();
            }
        }

        // ── PROPERTY TABLE ────────────────────────────────────────────────────────────

        private void PropTableHeader()
        {
            EditorGUILayout.BeginHorizontal(EditorStyles.toolbar);
            for (int i = 0; i < Headers.Length; i++)
                MiniLabel(Headers[i], W[i]);
            EditorGUILayout.EndHorizontal();
        }

        // soRef is the SerializedProperty on the parent SO that holds the PropertyDefinition reference.
        private void PropRow(string label, SerializedProperty soRef)
        {
            EditorGUILayout.BeginHorizontal();
            GUILayout.Label(label, GUILayout.Width(W[0]));

            // Column 1 — the SO reference itself (drag to assign)
            // ObjectField avoids the foldout expansion that PropertyField adds for ScriptableObjects
            EditorGUI.BeginChangeCheck();
            var newDef = EditorGUILayout.ObjectField(soRef.objectReferenceValue, typeof(PropertyDefinition), false, GUILayout.Width(W[1])) as PropertyDefinition;
            if (EditorGUI.EndChangeCheck())
            {
                soCache.Remove(soRef.objectReferenceValue);
                soRef.objectReferenceValue = newDef;
                soRef.serializedObject.ApplyModifiedProperties();
            }

            var def = soRef.objectReferenceValue as PropertyDefinition;
            if (def != null)
            {
                var defSO = SO(def);
                defSO.Update();
                EditorGUI.BeginChangeCheck();
                var iconProp = defSO.FindProperty("propertyIcon");
                var sprite   = iconProp?.objectReferenceValue as Sprite;
                if (sprite != null)
                {
                    var tex = AssetPreview.GetAssetPreview(sprite);
                    GUILayout.Label(tex != null ? new GUIContent(tex) : GUIContent.none,
                        GUILayout.Width(W[2]), GUILayout.Height(18));
                }
                else
                {
                    EditorGUILayout.PropertyField(iconProp, GUIContent.none, GUILayout.Width(W[2]));
                }
                Field(defSO, "costResource",          W[3]);
                // Cost icon — grabbed from the assigned cost resource
                var costRes   = defSO.FindProperty("costResource").objectReferenceValue as ResourceData;
                var costSprite = costRes?.icon;
                if (costSprite != null)
                {
                    var costTex = AssetPreview.GetAssetPreview(costSprite);
                    GUILayout.Label(costTex != null ? new GUIContent(costTex) : GUIContent.none,
                        GUILayout.Width(W[4]), GUILayout.Height(18));
                }
                else
                {
                    GUILayout.Space(W[4]);
                }
                Field(defSO, "unlocksAfter",          W[5]);
                Field(defSO, "unlocksAfterLevel",     W[6]);
                Field(defSO, "baseValue",             W[7]);
                Field(defSO, "increment",             W[8]);
                Field(defSO, "maxLevel",              W[9]);
                Field(defSO, "upgradeCostBase",       W[10]);
                Field(defSO, "upgradeCostMultiplier", W[11]);
                Field(defSO, "costScalingMode",       W[12]);
                var scalingProp = defSO.FindProperty("costScalingMode");
                if (scalingProp != null && scalingProp.enumValueIndex == 2)
                    Field(defSO, "upgradeCostCurve", W[13]);
                else
                    GUILayout.Space(W[13]);
                EditorGUI.BeginDisabledGroup(true);
                EditorGUILayout.FloatField(def.MaxValue, GUILayout.Width(W[14]));
                EditorGUI.EndDisabledGroup();
                Field(defSO, "showInUI", W[15]);
                if (EditorGUI.EndChangeCheck()) defSO.ApplyModifiedProperties();
                if (GUILayout.Button("↗", GUILayout.Width(W[16]))) EditorGUIUtility.PingObject(def);
            }

            EditorGUILayout.EndHorizontal();
        }

        // ── ASSET CREATION ────────────────────────────────────────────────────────────

        private void AddStage(SerializedObject configSO, SerializedProperty levelsProp)
        {
            var asset = MakeAsset<ObjectiveLevelData>($"Assets/Settings/Objectives/ObjectiveLevel_{levelsProp.arraySize + 1:D2}.asset");
            if (asset == null) return;
            int idx = levelsProp.arraySize;
            levelsProp.InsertArrayElementAtIndex(idx);
            levelsProp.GetArrayElementAtIndex(idx).objectReferenceValue = asset;
            configSO.ApplyModifiedProperties();
        }

        private void AddObjective(SerializedObject levelSO, SerializedProperty objsProp)
        {
            var asset = MakeAsset<ObjectiveData>("Assets/Settings/Objectives/Objective_New.asset");
            if (asset == null) return;
            int idx = objsProp.arraySize;
            objsProp.InsertArrayElementAtIndex(idx);
            objsProp.GetArrayElementAtIndex(idx).objectReferenceValue = asset;
            levelSO.ApplyModifiedProperties();
        }

        private void AddInteractable(SerializedProperty arrProp)
        {
            var asset = MakeAsset<InteractableData>("Assets/Settings/Interactables/Interactable_New.asset");
            if (asset == null) return;
            int idx = arrProp.arraySize;
            arrProp.InsertArrayElementAtIndex(idx);
            arrProp.GetArrayElementAtIndex(idx).objectReferenceValue = asset;
            gameDataSO.ApplyModifiedProperties();
        }

        private static T MakeAsset<T>(string path) where T : ScriptableObject
        {
            Directory.CreateDirectory(Path.GetDirectoryName(path)!);
            var asset = ScriptableObject.CreateInstance<T>();
            AssetDatabase.CreateAsset(asset, AssetDatabase.GenerateUniqueAssetPath(path));
            AssetDatabase.SaveAssets();
            return asset;
        }

        // ── UI HELPERS ────────────────────────────────────────────────────────────────

        private bool SectionHeader(string title, bool expanded)
        {
            GUILayout.Space(6);
            var s = new GUIStyle(EditorStyles.foldoutHeader) { fontSize = 13, fontStyle = FontStyle.Bold };
            return EditorGUILayout.Foldout(expanded, title, true, s);
        }

        private void Foldout(Object key, string label) =>
            SetFoldout(key, EditorGUILayout.Foldout(GetFoldout(key), label, true, EditorStyles.foldoutHeader));

        private bool GetFoldout(Object o)         => foldouts.TryGetValue(o, out var v) && v;
        private void SetFoldout(Object o, bool v) => foldouts[o] = v;

        private static bool SmallRemoveButton() => GUILayout.Button("✕", GUILayout.Width(22));
        private static bool Confirm(string msg) =>
            EditorUtility.DisplayDialog("Confirm", msg, "Yes", "Cancel");

        private static void PlusButton(string label, System.Action action)
        {
            EditorGUILayout.BeginHorizontal();
            GUILayout.FlexibleSpace();
            if (GUILayout.Button($"+ {label}", GUILayout.Width(140))) action();
            EditorGUILayout.EndHorizontal();
        }

        private static void MiniLabel(string text, float width) =>
            GUILayout.Label(text, EditorStyles.miniLabel, GUILayout.Width(width));

        private static void Field(SerializedObject so, string field, float width)
        {
            var p = so.FindProperty(field);
            if (p != null) EditorGUILayout.PropertyField(p, GUIContent.none, GUILayout.Width(width));
        }
    }
}
