using System.Collections.Generic;
using System.Linq;
using ANS.Common.ServiceLocator;
using UnityEngine;

namespace Idler
{
    public class SurfaceController : MonoBehaviour
    {
        private readonly List<Interactable> interactables = new();
        public IReadOnlyList<Interactable> Interactables => interactables;
        public List<Interactable_Building> AllBuildings { get; private set; }
        
        private ICursor cursor;

        private void Awake()
        {
            cursor = ServiceLocator.Current.Get<ICursor>();
        }

        public void Activate()
        {
            cursor.Activate();
            foreach (var building in AllBuildings)
            {
                building.ShowUI();
            }
        }

        public void Deactivate()
        {
            foreach (var building in AllBuildings)
            {
                building.HideUI();
            }
        }
        
        public void RegisterInteractable(Interactable interactable)   => interactables.Add(interactable);
        public void UnregisterInteractable(Interactable interactable) => interactables.Remove(interactable);

        public void Initialize()
        {
            AllBuildings = GetComponentsInChildren<Interactable_Building>(true).ToList();
            foreach (var building in AllBuildings)
            {
                building.Initialize();
            }
        }
    }
}
