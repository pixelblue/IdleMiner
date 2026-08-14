using ANS.Common.ServiceLocator;
using UnityEngine;

namespace Idler
{
    [System.Serializable]
    public class ObjectPosition
    {
        public Transform transform;
        public Vector3 position;
        public Vector3 rotation;
    }
    
    [System.Serializable]
    public class StageSettings
    {
        public CameraPosition cameraPosition;
        public GameObject[] objectsToActivate;
        public GameObject[] objectsToDeactivate;
        public LightSettings lightSettings;
        public ObjectPosition[] objectPositions;

        private IMap mapCtrl;
        private ICamera cameraCtrl;
        
        public void ActivateStage()
        {
            if (Application.isPlaying)
            {
                mapCtrl = ServiceLocator.Current.Get<IMap>();
                cameraCtrl = ServiceLocator.Current.Get<ICamera>();
            }
            else
            {
                mapCtrl = Object.FindFirstObjectByType<MapController>(); 
                cameraCtrl = Object.FindFirstObjectByType<CameraController>();
            }
            
            foreach (var obj in objectsToActivate)
            {
                obj.SetActive(true);
            }

            foreach (var obj in objectsToDeactivate)
            {
                obj.SetActive(false);
            }

            foreach (var obj in objectPositions)
            {
                if(obj.transform == null) continue;
                obj.transform.localPosition = obj.position;
                obj.transform.localRotation = Quaternion.Euler(obj.rotation);    
            }

            mapCtrl.MainLight.intensity = lightSettings.intensity;
            mapCtrl.MainLight.range = lightSettings.range;

            cameraCtrl.SetCameraPosition(cameraPosition, true);

        }
    }
}