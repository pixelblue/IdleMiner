using NaughtyAttributes;
using UnityEngine;
using UnityEngine.Playables;

namespace Idler
{
    public class ShakeAsset : PlayableAsset
    {
        [BoxGroup("Shake Settings")]
        [Tooltip("Maximum positional displacement in local units.")]
        public float positionStrength = 0.1f;

        [BoxGroup("Shake Settings")]
        [Tooltip("Maximum rotational displacement in degrees.")]
        public float rotationStrength = 2f;

        [BoxGroup("Shake Settings")]
        [Tooltip("Speed of the Perlin noise traversal — higher = faster shake.")]
        public float frequency = 10f;

        [BoxGroup("Shake Settings")]
        [Tooltip("When enabled the shake intensity ramps up over the clip duration instead of fading out.")]
        public bool fadeIn = false;

        public override Playable CreatePlayable(PlayableGraph graph, GameObject owner)
        {
            var playable = ScriptPlayable<ShakeBehaviour>.Create(graph);
            var behaviour = playable.GetBehaviour();
            behaviour.positionStrength = positionStrength;
            behaviour.rotationStrength = rotationStrength;
            behaviour.frequency = frequency;
            behaviour.fadeIn = fadeIn;
            return playable;
        }
    }
}