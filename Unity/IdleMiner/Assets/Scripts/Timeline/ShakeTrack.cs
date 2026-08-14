using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;

namespace Idler
{
    [TrackClipType(typeof(ShakeAsset))]
    [TrackBindingType(typeof(Transform))]
    [TrackColor(0.9f, 0.4f, 0.1f)]
    public class ShakeTrack : TrackAsset
    {
        public override Playable CreateTrackMixer(PlayableGraph graph, GameObject go, int inputCount)
        {
            return ScriptPlayable<ShakeMixerBehaviour>.Create(graph, inputCount);
        }
    }

    public class ShakeMixerBehaviour : PlayableBehaviour
    {
        private Transform _boundTransform;
        private Vector3 _originalLocalPosition;
        private Quaternion _originalLocalRotation;
        private bool _originalStored;

        public override void ProcessFrame(Playable playable, FrameData info, object playerData)
        {
            if (!(playerData is Transform t))
                return;

            int inputCount = playable.GetInputCount();

            float totalWeight = 0f;
            for (int i = 0; i < inputCount; i++)
                totalWeight += playable.GetInputWeight(i);

            // Store original pose on first active frame, or when the bound object changes
            if (totalWeight > 0f && (!_originalStored || _boundTransform != t))
            {
                _boundTransform = t;
                _originalLocalPosition = t.localPosition;
                _originalLocalRotation = t.localRotation;
                _originalStored = true;
            }

            // Always reset to original before applying this frame's shake
            if (_originalStored)
            {
                t.localPosition = _originalLocalPosition;
                t.localRotation = _originalLocalRotation;
            }

            if (totalWeight <= 0f)
                return;

            Vector3 totalPosShake = Vector3.zero;
            Vector3 totalRotShake = Vector3.zero;

            float mixerTime = (float)playable.GetTime();

            for (int i = 0; i < inputCount; i++)
            {
                float weight = playable.GetInputWeight(i);
                if (weight <= 0f)
                    continue;

                var clipPlayable = (ScriptPlayable<ShakeBehaviour>)playable.GetInput(i);
                ShakeBehaviour behaviour = clipPlayable.GetBehaviour();

                float clipTime = (float)clipPlayable.GetTime();
                float clipDuration = (float)clipPlayable.GetDuration();
                float normalizedClipTime = clipDuration > 0f ? Mathf.Clamp01(clipTime / clipDuration) : 0f;
                float fadeOut = behaviour.fadeIn ? normalizedClipTime : 1f - normalizedClipTime;

                float tNoise = mixerTime * behaviour.frequency;

                float px = (Mathf.PerlinNoise(tNoise, 0f) * 2f - 1f) * behaviour.positionStrength * fadeOut * weight;
                float py = (Mathf.PerlinNoise(tNoise, 10f) * 2f - 1f) * behaviour.positionStrength * fadeOut * weight;
                float pz = (Mathf.PerlinNoise(tNoise, 20f) * 2f - 1f) * behaviour.positionStrength * fadeOut * weight;

                float rx = (Mathf.PerlinNoise(tNoise, 30f) * 2f - 1f) * behaviour.rotationStrength * fadeOut * weight;
                float ry = (Mathf.PerlinNoise(tNoise, 40f) * 2f - 1f) * behaviour.rotationStrength * fadeOut * weight;
                float rz = (Mathf.PerlinNoise(tNoise, 50f) * 2f - 1f) * behaviour.rotationStrength * fadeOut * weight;

                totalPosShake += new Vector3(px, py, pz);
                totalRotShake += new Vector3(rx, ry, rz);
            }

            t.localPosition = _originalLocalPosition + totalPosShake;
            t.localRotation = _originalLocalRotation * Quaternion.Euler(totalRotShake);
        }

        public override void OnBehaviourPause(Playable playable, FrameData info)
        {
            base.OnBehaviourPause(playable, info);
            RestoreTransform();
        }

        public override void OnPlayableDestroy(Playable playable)
        {
            base.OnPlayableDestroy(playable);
            RestoreTransform();
            _boundTransform = null;
        }

        private void RestoreTransform()
        {
            if (!_originalStored || _boundTransform == null)
                return;

            _boundTransform.localPosition = _originalLocalPosition;
            _boundTransform.localRotation = _originalLocalRotation;
            _originalStored = false;
        }
    }
}
