using System.IO;
using ANS.Common.ServiceLocator;
using UnityEngine;

namespace Idler
{
    public class SaveLoadManager : MonoBehaviour, ISaveLoadManager
    {
        [SerializeField] private int saveVersion = 1;

        public SaveData Data { get; private set; } = new SaveData();

        private IObjectives objectivesCtrl;
        private IResourceManager resourceCtrl;
        private string SavePath => Path.Combine(Application.persistentDataPath, "save.json");

        private void Awake()
        {
            objectivesCtrl = ServiceLocator.Current.Get<IObjectives>();
            resourceCtrl   = ServiceLocator.Current.Get<IResourceManager>();
        }

        private void OnApplicationFocus(bool hasFocus)
        {
            if (!hasFocus) SaveAll();
        }

        private void OnApplicationPause(bool pauseStatus)
        {
            if (pauseStatus) SaveAll();
        }

        private void OnApplicationQuit()
        {
            SaveAll();
        }

        public void SaveAll()
        {
            Data.saveVersion = saveVersion;
            resourceCtrl.Save(Data);
            objectivesCtrl.Save(Data);
            File.WriteAllText(SavePath, JsonUtility.ToJson(Data, prettyPrint: true));
            Debug.Log("Saved to " + SavePath);
        }

        public void LoadAll()
        {
            if (!File.Exists(SavePath))
            {
                Debug.Log("[SaveLoadManager] No save file found, resetting all.");
                resourceCtrl.Reset();
                objectivesCtrl.Reset();
                return;
            }
            Debug.Log("Loading from " + SavePath);
            Data = JsonUtility.FromJson<SaveData>(File.ReadAllText(SavePath));
            resourceCtrl.Load(Data);
            objectivesCtrl.Load(Data);
        }

        public void ResetAll()
        {
            Data = new SaveData();
            resourceCtrl.Reset();
            objectivesCtrl.Reset();
            if (File.Exists(SavePath)) File.Delete(SavePath);
        }
    }
}
