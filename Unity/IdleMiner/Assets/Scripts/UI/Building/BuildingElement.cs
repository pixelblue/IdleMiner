using System;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

namespace Idler
{
    public class BuildingElement : MonoBehaviour
    {
        [SerializeField] private Image mainIcon;
        [SerializeField] private TMP_Text costText;
        [SerializeField] private TMP_Text owningText;

        public void Initialize(InteractableData interactableData)
        {
            
        }
    }
}