using UnityEngine;

namespace Idler
{
    public abstract class Interactable : MonoBehaviour
    {
        public abstract void OnCursorEnter(CursorController cursor);
        public abstract void OnCursorExit(CursorController cursor);
        public abstract void OnCursorHit(CursorController cursor);
    }
}