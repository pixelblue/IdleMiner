using Idler;
using UnityEngine;

namespace Idler
{
    public class Interactable_Satellite : Interactable
    {
        private PropertyState slots;
        private PropertyState slotSpeed;
        
        protected override void Awake()
        {
            base.Awake();
            var d       = (SatelliteData)Data;
            slots       = new PropertyState(d.slots);
            slotSpeed   = new PropertyState(d.slotSpeed);
            Properties  = new[] { slots, slotSpeed};
            WirePropertyPrerequisites();
        }
    }
    
}
