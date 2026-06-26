using System.Collections;
using UnityEngine;

namespace Idler.States
{
    public class State_Camera_Fixed : State_Camera_Base
    {
        public override void OnActivate()
        {
            base.OnActivate();
            Ctrl.SetCameraPosition(Ctrl.CameraPositions[ObjectivesCtrl.CurrentLevel], true);
        }

        public override void OnDeactivate()
        {
            base.OnDeactivate();
        }

        protected override void RegisterEvents()
        {
            base.RegisterEvents();
            EventCtrl.LevelAdvanced += OnLevelAdvanced;
        }

        protected override void UnregisterEvents()
        {
            base.UnregisterEvents();
            EventCtrl.LevelAdvanced -= OnLevelAdvanced;
        }

        private void OnLevelAdvanced(int newLevel)
        {
            print("currentLevel is " + ObjectivesCtrl.CurrentLevel + " and cameraPositions length is " + Ctrl.CameraPositions.Length);
            if (ObjectivesCtrl.CurrentLevel == Ctrl.CameraPositions.Length)
            {
                Ctrl.SetCameraPosition(Ctrl.FinalCameraPosition, false);
                StartCoroutine(ChangeStateAfter());
            }
            else
            {
                Ctrl.SetCameraPosition(Ctrl.CameraPositions[ObjectivesCtrl.CurrentLevel], false);
            }
        }

        private IEnumerator ChangeStateAfter()
        {
            yield return new WaitForSeconds(0.5f);
            Fsm.ChangeState<State_Camera_Free>();
        }
    }
}