using UnityEngine;

namespace ANS_Core.Utilities
{
    public static class Util
    {
        public static string GetNameWithoutClone(string inputName)
        {
            return inputName.Replace("(Clone)", "");
        }

        public static string FormatNumber(float value)
        {
            if (value < 1000f)
                return Mathf.Floor(value).ToString();

            string[] suffixes = { "K", "M", "B", "T" };
            int suffixIndex = -1;

            while (value >= 1000f && suffixIndex < suffixes.Length - 1)
            {
                value /= 1000f;
                suffixIndex++;
            }

            return value.ToString("0.##") + suffixes[suffixIndex];
        }
    }
}