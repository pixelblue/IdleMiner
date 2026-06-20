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
        private IGame gameCtrl;
        private string SavePath => Path.Combine(Application.persistentDataPath, "save.json");

        private void Awake()
        {
            objectivesCtrl = ServiceLocator.Current.Get<IObjectives>();
            resourceCtrl   = ServiceLocator.Current.Get<IResourceManager>();
            gameCtrl       = ServiceLocator.Current.Get<IGame>();
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
            gameCtrl.Save(Data);
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
                gameCtrl.Reset();
                resourceCtrl.Reset();
                objectivesCtrl.Reset();
                return;
            }
            Debug.Log("Loading from " + SavePath);
            Data = JsonUtility.FromJson<SaveData>(File.ReadAllText(SavePath));
            gameCtrl.Load(Data);
            resourceCtrl.Load(Data);
            objectivesCtrl.Load(Data);
        }

        public void ResetAll()
        {
            Data = new SaveData();
            gameCtrl.Reset();
            resourceCtrl.Reset();
            objectivesCtrl.Reset();
            if (File.Exists(SavePath)) File.Delete(SavePath);
        }
    }
}
