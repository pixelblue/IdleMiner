using System;

namespace ANS_Core.Utilities
{
    public static class TimespanFormatter
    {
        public static string GetFormattedTime(TimeSpan totalTime)
        {
            var returnValue = totalTime.ToString("d'd 'h'h 'm'm'");

            if (totalTime.TotalDays < 1)
            {
                returnValue = totalTime.ToString("h'h 'm'm'");
            }

            if (totalTime.TotalHours < 1)
            {
                returnValue = totalTime.ToString("m'm 's's'");
            }

            if (totalTime.TotalMinutes < 1)
            {
                returnValue = totalTime.ToString("s's'");
            }

            return returnValue;
        }
    }
}