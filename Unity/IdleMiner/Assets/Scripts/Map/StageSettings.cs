using ANS.Common.ServiceLocator;
using UnityEngine;

namespace Idler
{
    [System.Serializable]
    public class StageSettings
    {
        public CameraPosition cameraPosition;
        public GameObject[] objectsToActivate;
        public GameObject[] objectsToDeactivate;
        public LightSettings lightSettings;

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

            mapCtrl.MainLight.intensity = lightSettings.intensity;
            mapCtrl.MainLight.range = lightSettings.range;

            cameraCtrl.SetCameraPosition(cameraPosition, true);

        }
    }
}