namespace Idler
{
    public class InteractableUI_BaseStation : InteractableUI
    {
        protected override void CreateProperties()
        {
            base.CreateProperties();
            
            var hitValueProp = Instantiate(LeveledPropertyPrefab, LeveledPropertiesContainer);
            hitValueProp.Initialize(GameCtrl.Data.HitValue, Interactable);
            
            var botsProp = Instantiate(LeveledPropertyPrefab, LeveledPropertiesContainer);
            botsProp.Initialize(GameCtrl.Data.BaseStationBots, Interactable);
        }
    }
}