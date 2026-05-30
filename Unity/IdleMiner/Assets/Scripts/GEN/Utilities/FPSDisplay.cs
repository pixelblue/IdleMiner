using TMPro;
using UnityEngine;
using UnityEngine.UI;

namespace ANS.Utilities
{
    public class FPSDisplay : MonoBehaviour
    {
        float deltaTime = 0.0f;
        private TextMeshProUGUI text;
        private void Awake()
        {
            text = GetComponent<TextMeshProUGUI>();
        }

        void Update()
        {
            deltaTime += (Time.unscaledDeltaTime - deltaTime) * 0.1f;
            var msec = (int)(deltaTime * 1000.0f);
            var fps = (int)(1.0f / deltaTime);
            text.SetText("{0} ms {1} fps", msec, fps);
        }
    }
}
