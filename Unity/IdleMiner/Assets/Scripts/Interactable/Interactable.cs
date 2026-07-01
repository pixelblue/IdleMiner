using ANS_Core.Utilities;
using ANS.Common;
using ANS.Common.ServiceLocator;
using DG.Tweening;
using UnityEngine;
using UnityEngine.EventSystems;

namespace Idler
{
    public class Interactable : MonoBehaviour, ISaveLoad
    {
        [field: SerializeField] public InteractableData Data { get; private set; }
        [field: SerializeField] public Collider Coll;
        [field: SerializeField] public Transform HitContainer { get; private set; }
        [field: SerializeField] public Transform UiAttachPoint { get; private set; }
        [SerializeField] private InteractableUI uiPrefab;

        
        public PropertyState[] Properties { get; protected set; }
        public InteractableUI InteractableUICtrl { get; private set; }
        public OutlineController OutlineCtrl { get; private set; }
        public int CurrentLevel { get; set; }

        protected IPool PoolCtrl;
        protected IMap MapCtrl;
        protected IMainUI MainUI;
        protected IResourceManager ResourceCtrl;
        protected ICamera CamCtrl;
        protected IEventManager EventCtrl;
        protected IObjectives ObjectivesCtrl;
        protected IGame GameCtrl;
        
        public bool IsCursorPressed { get; private set; }
        
        private bool isCursorHovering = false;

        protected virtual void Awake()
        {
            PoolCtrl       = ServiceLocator.Current.Get<IPool>();
            MapCtrl        = ServiceLocator.Current.Get<IMap>();
            MainUI         = ServiceLocator.Current.Get<IMainUI>();
            CamCtrl        = ServiceLocator.Current.Get<ICamera>();
            ResourceCtrl   = ServiceLocator.Current.Get<IResourceManager>();
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
        
        public virtual void OnCursorPressed(CursorController cursor)
        {
            IsCursorPressed = true;
        }

        public virtual void OnCursorReleased(CursorController cursor)
        {
            IsCursorPressed = false;
        }

        public virtual void OnCursorEnter(CursorController cursor)
        {
            isCursorHovering = true;
            Select();
        }
        
        public virtual void OnCursorExit(CursorController cursor)
        {
            isCursorHovering = false;
            IsCursorPressed = false;
            bool overUI = EventSystem.current != null && EventSystem.current.IsPointerOverGameObject();
            if(overUI == false) Deselect();
        }

        public virtual void OnCursorHit(CursorController cursor)
        {
            BumpHitContainer();
        }

        protected virtual void BumpHitContainer()
        {
            if (HitContainer == null) return;
            HitContainer.DOKill();
            HitContainer.localScale = Vector3.one * 1.2f;
            HitContainer.DOScale(Vector3.one, 0.2f);
        }

        public virtual void OnBotHit()
        {
        }

        // Matches each PropertyState to its prerequisite based on PropertyDefinition.unlocksAfter.
        // Call after Properties[] is fully assigned in the subclass Awake().
        protected void WirePropertyPrerequisites()
        {
            foreach (var state in Properties)
            {
                if (state.Definition.unlocksAfter == null) continue;
                var prereq = System.Array.Find(Properties, s => s.Definition == state.Definition.unlocksAfter);
                if (prereq != null) state.SetPrerequisite(prereq);
            }
        }

        protected void GetCollider()
        {
            Coll = GetComponentInChildren<Collider>();
        }

        protected virtual void Select()
        {
            // don't select if another interactable is already selected
            if (MapCtrl.SelectedInteractable != null) return;

            MapCtrl.SelectedInteractable = this;
            if (OutlineCtrl != null) OutlineCtrl.Show();
            ShowUI();
        }

        protected virtual void ShowUI()
        {
            if (InteractableUICtrl == null) return;
            InteractableUICtrl.Show(this);
        }

        protected virtual void Deselect()
        {
            MapCtrl.SelectedInteractable = null;
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

        public virtual void Save(SaveData data)
        {
            if (Properties.Length == 0) return;
            var entry = System.Array.Find(data.interactables, e => e.interactableId == Data.interactableName);
            if (entry == null) return;
            entry.properties = System.Array.ConvertAll(Properties, p => new PropertySaveEntry { propertyName = p.Definition.propertyName });
            foreach (var prop in Properties) prop.Save(entry.properties);
        }

        public virtual void Load(SaveData data)
        {
            if (Properties.Length == 0) return;
            var entry = System.Array.Find(data.interactables, e => e.interactableId == Data.interactableName);
            if (entry == null) { Reset(); return; }
            foreach (var prop in Properties) prop.Load(entry.properties);
        }

        public virtual void Reset()
        {
            foreach (var prop in Properties) prop.Reset();
        }
        
        protected void SpawnResource(float value, ResourceData resourceToDrop)
        {
            var newResource = (ResourceController)PoolCtrl.Spawn(MapCtrl.ResourcePrefab.name, Vector3.zero);
            newResource.Initialize(Coll, resourceToDrop, value);
        }

    }
}
