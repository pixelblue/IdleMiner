using UnityEngine;

namespace ANS_Core.Utilities
{
    public static class JsonConverter
    {
        public static T[] ArrayFromJson<T>(string json)
        {
            var tmp= json.Trim('[');
            tmp = tmp.Trim(']');
            tmp = tmp.Replace("},{", "}#{");
            var array = tmp.Split('#');

            T[] arr = new T[array.Length];

            for (int i = 0; i < arr.Length; i++)
            {
                arr[i] = JsonUtility.FromJson<T>(array[i]);
            }

            return arr;
        }
    }
}