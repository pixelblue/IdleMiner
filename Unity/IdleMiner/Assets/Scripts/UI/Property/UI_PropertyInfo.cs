using TMPro;
using UnityEngine;
using UnityEngine.UI;

namespace Idler
{
    public class UI_PropertyInfo : MonoBehaviour
    {
        [SerializeField] private TMP_Text infoText;
        [SerializeField] private TMP_Text valueText;

        private PropertyState propertyState;

        public void Show(PropertyState propertyState, RectTransform parentRectTransform)
        {
            this.propertyState = propertyState;
            infoText.text = propertyState.propertyInfo;
            valueText.text = propertyState.Value + " -> " + propertyState.GetValue(propertyState.CurrentLevel + 1);

            gameObject.SetActive(true);
            AlignLeftOf(parentRectTransform);
        }

        private void AlignLeftOf(RectTransform target)
        {
            var rt = (RectTransform)transform;
            LayoutRebuilder.ForceRebuildLayoutImmediate(rt);

            var corners = new Vector3[4];
            target.GetWorldCorners(corners);
            // corners[0] = bottom-left, corners[1] = top-left
            float targetLeftX   = corners[0].x;
            float targetCenterY = (corners[0].y + corners[1].y) * 0.5f;

            // shift left so our right edge (accounting for pivot) lands on target's left edge
            float worldWidth = rt.rect.width * rt.lossyScale.x;
            rt.position = new Vector3(
                targetLeftX - (worldWidth * (1f - rt.pivot.x) + 10.0f),
                targetCenterY,
                rt.position.z
            );
        }

        public void Hide()
        {
            this.gameObject.SetActive(false);
        }
    }
}