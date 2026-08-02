namespace Idler
{
    // Global cursor stats — the only truly game-wide upgradeable properties.
    // Per-interactable stats (HitValue, Bots, etc.) live on each Interactable's Properties[].
    public class GlobalPropertyStats
    {
        public PropertyState HitRate { get; private set; }

        public void Initialize(GameData data)
        {
            HitRate = new PropertyState(data.HitRate);
        }

        public PropertyState[] All() => new[] { HitRate };
    }
}
