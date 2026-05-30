using UnityEngine;

[System.Serializable]
public class VersionInfo { public string version; }

public static class VersionLoader
{
    static VersionInfo _info;

    public static string Version
    {
        get
        {
            if (_info == null)
                Load();
            return _info.version;
        }
    }

    static void Load()
    {
        TextAsset json = Resources.Load<TextAsset>("version");
        _info = JsonUtility.FromJson<VersionInfo>(json.text);
    }
}