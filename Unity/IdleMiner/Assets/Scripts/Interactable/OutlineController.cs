using UnityEngine;

namespace Idler
{
    public class OutlineController : MonoBehaviour
    {
        private Renderer[] allRenderers;
        private uint[] originalMasks;

        private void Awake()
        {
            allRenderers = GetComponentsInChildren<Renderer>(true);
            originalMasks = new uint[allRenderers.Length];
            for (int i = 0; i < allRenderers.Length; i++)
                originalMasks[i] = allRenderers[i].renderingLayerMask;
        }

        public void Show()
        {
            uint outlineMask = RenderingLayerMask.GetMask(Constants.Layers.Outline);
            foreach (var r in allRenderers)
                r.renderingLayerMask |= outlineMask;
        }

        public void Hide()
        {
            for (int i = 0; i < allRenderers.Length; i++)
                allRenderers[i].renderingLayerMask = originalMasks[i];
        }
    }
}