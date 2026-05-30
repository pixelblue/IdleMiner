using System;
using System.Collections;
using UnityEngine;

namespace ANS_Core.Extensions
{
    public static class IntExtensions
    {
        public static IEnumerator AnimateValue(this int integer, int startValue, int targetValue, float speedMultiplier, Action<int> refValue)
        {
            var lerpValue = 0.0f;
            while (lerpValue <= 1.0f)
            {
                lerpValue += Time.deltaTime * speedMultiplier;
                refValue((int)Mathf.Lerp(startValue, targetValue, lerpValue));
                yield return null;
            }
        }
    }
}