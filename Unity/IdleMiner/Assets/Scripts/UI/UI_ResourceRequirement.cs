using TMPro;
using UnityEngine;
using UnityEngine.UI;

namespace Idler
{
    public class UI_ResourceRequirement : MonoBehaviour
    {
        [SerializeField] private Image slider;
        [SerializeField] private Image icon;
        [SerializeField] private TMP_Text valueText;
        
        public void Initialize(ResourceRequirement requirement)
        {
            slider.fillAmount = 0;
            icon.sprite = requirement.resource.icon;
            valueText.text = $"{0}/{requirement.amount}";
        }
    }
}