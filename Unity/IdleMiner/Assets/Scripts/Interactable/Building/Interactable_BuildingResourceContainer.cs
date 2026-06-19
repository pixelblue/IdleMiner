namespace Idler
{
    public class Interactable_BuildingResourceContainer : Interactable_Building
    {
        public override void Initialize()
        {
            base.Initialize();
        }

        public override void OnCursorEnter(CursorController cursor)
        {
            //cursor.cursorResourceCtrl.StartResourceDrop(InteractableUICtrl.RectTransform);
        }

        public override void OnCursorExit(CursorController cursor)
        {
            //cursor.cursorResourceCtrl.StopResourceDrop();
        }
        public override void OnCursorHit(CursorController cursor) { }
    }
}