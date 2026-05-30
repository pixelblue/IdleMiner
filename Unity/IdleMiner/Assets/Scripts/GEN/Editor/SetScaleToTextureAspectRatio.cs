#if UNITY_EDITOR
using UnityEditor;
using UnityEngine;

namespace ANS_Core.EditorTools
{
    public class SetScaleToTextureAspectRatio
    {
        [MenuItem("ANS/Set Scale To Texture")]
        private static void SetScaleToTexture()
        {
            GameObject obj = Selection.activeGameObject;
            if (obj == null) return;

            var meshRenderer = obj.GetComponent<MeshRenderer>();
            var tex = meshRenderer.sharedMaterial.mainTexture;

            var aspectRatio = tex.height / (float)tex.width;
            Debug.Log("aspectRatio is " + aspectRatio);
            var currentScale = new Vector2(obj.transform.localScale.x, obj.transform.localScale.y);

            obj.transform.localScale = new Vector3(currentScale.x, currentScale.x * aspectRatio, obj.transform.localScale.z);

        }
    }
}
#endif
