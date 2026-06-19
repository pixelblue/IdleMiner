using TMPro;
using UnityEngine;
using UnityEngine.UI;

namespace Idler
{
    public class UI_LeveledProperty : MonoBehaviour
    {
        [SerializeField] private TMP_Text propertyNameText;
        [SerializeField] private Image propertyIcon;
        [SerializeField] private Button buyButton;
        [SerializeField] private TMP_Text costText;
        [SerializeField] private Image costIcon;
        
        private LeveledProperty data;
        
        public void Initialize(LeveledProperty leveledProperty)
        {
            this.data = leveledProperty;
            // Initialize the UI with the leveled property data
            propertyNameText.text = leveledProperty.propertyName;
        }
    }
}