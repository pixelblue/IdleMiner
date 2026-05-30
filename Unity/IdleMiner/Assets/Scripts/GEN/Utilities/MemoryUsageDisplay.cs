using TMPro;
using UnityEngine;
using UnityEngine.Profiling;

namespace ANS.Utilities
{
    public class MemoryUsageDisplay : MonoBehaviour
    {
        private TextMeshProUGUI text;

        private void Awake()
        {
            text = GetComponent<TextMeshProUGUI>();
        }

        private void Update()
        {
            var totalBytesAllocated = Profiler.GetTotalAllocatedMemoryLong() / 1000000;
            text.SetText(totalBytesAllocated + " MB");
        }
    }
}