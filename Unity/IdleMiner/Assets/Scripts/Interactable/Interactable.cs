using ANS_Core.Utilities;
using ANS.Common;
using ANS.Common.ServiceLocator;
using UnityEngine;
using UnityEngine.EventSystems;

namespace Idler
{
    public enum InteractableContext { Mining, Surface }

    public class Interactable : MonoBehaviour
    {
        [field: SerializeField] public InteractableData Data { get; private set; }
        [field: SerializeField] public Collider Coll;
        [field: SerializeField] public Transform UiAttachPoint { get; private set; }
        [SerializeField] private InteractableUI uiPrefab;
        [SerializeField] private string id; // unique per scene object, used for save/load

        
        public PropertyState[] Properties { get; protected set; }
        public InteractableUI InteractableUICtrl { get; private set; }
        public OutlineController OutlineCtrl { get; private set; }
        public int CurrentLevel { get; set; }

        protected IPool PoolCtrl;
        protected IMap MapCtrl;
        protected IMainUI MainUI;
        protected ICamera CamCtrl;
        protected IEventManager EventCtrl;
        protected IObjectives ObjectivesCtrl;
        protected IGame GameCtrl;
        
        private bool isCursorHovering = false;

        protected virtual void Awake()
        {
            PoolCtrl       = ServiceLocator.Current.Get<IPool>();
            MapCtrl        = ServiceLocator.Current.Get<IMap>();
            MainUI         = ServiceLocator.Current.Get<IMainUI>();
            CamCtrl        = ServiceLocator.Current.Get<ICamera>();
            ObjectivesCtrl = ServiceLocator.Current.Get<IObjectives>();
            EventCtrl      = ServiceLocator.Current.Get<IEventManager>();
            GameCtrl       = ServiceLocator.Current.Get<IGame>();

            Properties  = System.Array.Empty<PropertyState>();
            OutlineCtrl = GetComponent<OutlineController>();
            SpawnUIElement();
        }

        protected virtual void OnEnable() { }

        protected virtual void OnDisable() { }
        
        public virtual void Initialize()
        {
            
        }
        
        public virtual void OnCursorEnter(CursorController cursor)
        {
            isCursorHovering = true;
            Select();
        }
        
        public virtual void OnCursorExit(CursorController cursor)
        {
            isCursorHovering = false;
            bool overUI = EventSystem.current != null && EventSystem.current.IsPointerOverGameObject();
            if(overUI == false) Deselect();
        }

        public virtual void OnCursorHit(CursorController cursor)
        {
        }
        
        public virtual void OnBotHit()
        {
        }

        protected void GetCollider()
        {
            Coll = GetComponentInChildren<Collider>();
        }

        protected virtual void Select()
        {
            if (OutlineCtrl != null)
                OutlineCtrl.Show();
            if (InteractableUICtrl != null)
                InteractableUICtrl.Show(this);
        }

        protected virtual void Deselect()
        {
            if (OutlineCtrl != null)                
                OutlineCtrl.Hide();
            if (InteractableUICtrl != null)
                InteractableUICtrl.Hide();
        }
        
        public InteractableUI SpawnUIElement()
        {
            if(uiPrefab == null) return null;
            InteractableUICtrl = Instantiate(uiPrefab) as InteractableUI;
            InteractableUICtrl.Hide();
            InteractableUICtrl.transform.SetParent(MainUI.InteractablesContainer, false);
            return InteractableUICtrl;
        }
        
        public void DespawnUIElement()
        {
            if(InteractableUICtrl != null)
                PoolCtrl.Release(Util.GetNameWithoutClone(uiPrefab.name), InteractableUICtrl);
        }

        public void TryDeselect()
        {
            if(isCursorHovering == false)
                Deselect();
        }
    }
}
