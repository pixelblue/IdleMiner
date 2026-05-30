using System;
using System.Globalization;

namespace ANS_Core.Extensions
{
    public static class LongExtenstions
    {
        public static string GetByteSize(this long bytesize)
        {
            string[] sizes = { "B", "KB", "MB", "GB", "TB" };
            double len = Convert.ToDouble(bytesize);
            int order = 0;
            while(len >= 1024D && order < sizes.Length - 1)
            {
                order++;
                len /= 1024;
            }

            return string.Format(CultureInfo.CurrentCulture,"{0:0.##} {1}", len, sizes[order]);
        }
    }
}