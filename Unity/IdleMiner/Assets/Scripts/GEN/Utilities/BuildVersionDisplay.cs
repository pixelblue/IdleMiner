using TMPro;
using UnityEngine;

namespace ANS.Utilities
{
    public class BuildVersionDisplay : MonoBehaviour
    {
        [SerializeField] private string prefix;
        private void OnEnable()
        {
            var text = GetComponent<TextMeshProUGUI>();
            text.text = prefix + " " + VersionLoader.Version.ToString();
        }
    }
}
