using UnityEngine;
using UnityEngine.UI;

namespace Idler
{
    public class UI_ProductionModule : MonoBehaviour
    {
        [SerializeField] private Image slotFiller;

        public void Initialize()
        {
        }

        public virtual void SetProgress(float t)
        {
            slotFiller.fillAmount = t;
        }
    }
}