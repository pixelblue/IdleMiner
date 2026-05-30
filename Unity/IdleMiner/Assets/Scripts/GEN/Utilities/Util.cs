namespace ANS_Core.Utilities
{
    public static class Util
    {
        public static string GetNameWithoutClone(string inputName)
        {
            return inputName.Replace("(Clone)", "");
        }
    }
}