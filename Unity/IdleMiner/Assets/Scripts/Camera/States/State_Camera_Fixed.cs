using System.Collections;
using UnityEngine;

namespace Idler.States
{
    public class State_Camera_Fixed : State_Camera_Base
    {
        public override void OnActivate()
        {
            base.OnActivate();
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
            if (ObjectivesCtrl.CurrentLevel == 2)
            {
                StartCoroutine(ChangeStateAfter());
            }
        }

        private IEnumerator ChangeStateAfter()
        {
            yield return new WaitForSeconds(0.5f);
            Fsm.ChangeState<State_Camera_Free>();
        }
    }
}