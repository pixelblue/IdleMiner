using System;
using UnityEngine;

namespace ANS_Core.FSM
{
    public abstract class FSM_GameState : MonoBehaviour
    {
        public abstract void OnActivate();
        public abstract void OnDeactivate();
    }

    [DefaultExecutionOrder(-200)]
    public class FSM_StateManager : MonoBehaviour
    {
        [SerializeField] private bool showStateChange;
        public FSM_GameState currentState;
        public FSM_GameState initialState;

        private FSM_GameState[] allStates;
        private FSM_GameState lastState;
        private bool isApplicationQuitting;

        public FSM_GameState LastState { get; private set; }

        private void OnApplicationQuit()
        {
            isApplicationQuitting = true;
        }

        private void EnsureInitialized()
        {
            if (allStates != null) return;
            allStates = GetComponentsInChildren<FSM_GameState>(true);
            foreach (FSM_GameState state in allStates)
                state.gameObject.SetActive(false);
        }

        private void Awake()
        {
            EnsureInitialized();
        }

        private void OnEnable()
        {
            isApplicationQuitting = false;
            // disable all states just to be sure

            if (initialState == null)
            {
                Debug.LogError("FSM_StateManager PLEASE set initial state");
                return;
            }

            // and set it as startstate
            //Debug.Log ( "FSM_StateManager : activate startstage" );
            CallInitialState();
        }

        private void OnDisable()
        {
            if (currentState != null && isApplicationQuitting == false)
            {
                currentState.OnDeactivate();
            }
        }

        private void CallInitialState()
        {
            currentState = initialState;
            initialState.gameObject.SetActive(true);
            initialState.OnActivate();
        }

        public void ChangeState<T>() where T : FSM_GameState
        {
            EnsureInitialized();
            if (currentState != null)
            {
                //Debug.Log ( "FSM_StateManager::deactivating state "  + currentState.GetType() );
                currentState.gameObject.SetActive(false);
                currentState.OnDeactivate();
                LastState = currentState;
            }
            // call onActivate for current gamestate
            currentState = GetState<T>();
            if (currentState != null)
            {
                if(showStateChange) Debug.Log("FSM_StateManager::activating state " + typeof(T));
                currentState.gameObject.SetActive(true);
                currentState.OnActivate();
            }
            else
                Debug.LogWarning("FSM_StateManager:: WARNING could not find State " + typeof(T));
        }

        private FSM_GameState GetState<T>() where T : FSM_GameState
        {
            foreach (var state in allStates)
            {
                if (state.GetType() == typeof(T)) return state;
            }
            return null;
        }
    }
}
