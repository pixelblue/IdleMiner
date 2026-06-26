# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

**IdleMiner** is a cozy incremental/idle farming game set in space, built with Unity 6 (6000.3.10f1). The player mines asteroids by hovering a cursor over them, gathers resources, and builds structures to supply their spaceship for the next stage. There is no player character — only mouse/cursor interaction. Inspired by "Tower Wizard."

## Unity & Build

- **Engine:** Unity 6000.3.10f1 with Universal Render Pipeline (URP 17.3.0)
- **Input:** Unity's new Input System (1.18.0) + a custom `TouchController` layer
- **Render Pipeline:** Separate URP assets for PC (`PC_RPAsset`) and Mobile (`Mobile_RPAsset`) in `Assets/Settings/Renderer/`
- Open the project in Unity Hub, then use Unity's Play Mode to test. There is no CLI build command configured yet.

## Code Architecture

### Namespaces & Layers

| Namespace | Purpose |
|---|---|
| `ANS_Core.*` | Generic engine-level utilities (Singleton, FSM, Types) |
| `ANS.Common.*` | Shared game systems (ServiceLocator, Pool) |
| `GEN.InputDevice` | Input abstraction layer |
| `Idler` | Game-specific logic (services, UI, states) |

Scripts live in `Assets/Scripts/` with two top-level folders:
- `GEN/` — reusable engine scaffolding (Common, Editor, Extensions, FSM, InputDevice, Pool, Types, Utilities)
- Game-specific folders: `Bot/`, `Building/`, `Camera/`, `Cursor/`, `Debug/`, `Event/`, `Game/`, `Interactable/`, `Map/`, `Objectives/`, `Resource/`, `SaveLoad/`, `Services/`, `UI/`

### Service Locator Pattern

All runtime services are registered via `ANS.Common.ServiceLocator.ServiceLocator`. The `ServiceContainer` MonoBehaviour (`Assets/Scripts/Services/ServiceContainer.cs`) bootstraps the locator at `[DefaultExecutionOrder(-300)]` during `Awake`. Services must implement `IGameService`. Retrieve via:
```csharp
ServiceLocator.Current.Get<IPool>();
```
New services: implement `IGameService`, register in `ServiceContainer.Initialize()`.

**All registered services:**

| Interface | Implementation | Purpose |
|---|---|---|
| `IEventManager` | `EventManager` | Game-wide events |
| `IPool` | `PoolManager` | Object pooling |
| `IGame` | `GameManager` | Game state root + `GameData` holder |
| `IMainUI` | `MainUiController` | UI root + screen management |
| `ICamera` | `CameraController` | Camera FSM |
| `IMap` | `MapController` | Tracks all active `Interactable` instances |
| `ICursor` | `CursorController` | Cursor position + hit detection |
| `IResource` | `ResourceManager` | Inventory management |
| `IObjectives` | `ObjectivesManager` | Level/objective progression |

### Finite State Machine

`FSM_StateManager` (`GEN/FSM/FSM_StateManager.cs`) manages game/UI states at `[DefaultExecutionOrder(-200)]`. States are child GameObjects that extend `FSM_GameState` (abstract: `OnActivate` / `OnDeactivate`). The manager discovers all states in its children on Awake. Transition via `ChangeState<T>()`. The FSM is used for game states, UI states, camera states, and per-interactable states (resource drops, drone spawner phases).

### Object Pool

`PoolManager` (`GEN/Pool/PoolManager.cs`) implements `IPool` and is registered as a service. Pools are pre-configured in the Inspector via `PoolCategory[]` arrays, then created by calling `CreatePools()` (triggered in `State_Game_Init.OnActivate()`). Spawn/release by string name:
```csharp
pool.Spawn("prefabName", position);
pool.Release("prefabName", component);
```
`ObjectPool<T>` is the generic typed implementation; `PoolManager.CreateTypedPool()` is a safe factory — add new supported component types there (no reflection). The pool strips "(Clone)" suffixes internally.

### Input System

`TouchController` (`GEN/InputDevice/TouchController.cs`) is the single point of input truth, exposing `HeldDown`, `TouchReleased`, `SwipedUp`, `SwipedDown` events. At runtime it activates either `PCInputController` (mouse + spacebar) or `MobileInputController` based on `Application.isMobilePlatform`. UI event system overlap is always respected — all input is suppressed when the pointer is over a UI element.

### Singleton

`Singleton<T>` (`GEN/Common/Singleton.cs`) is a `MonoBehaviour` base for scene-bound singletons. Prefer `ServiceLocator` for systems that need decoupled access.

### Interactable System

`Interactable` (`Assets/Scripts/Interactable/Interactable.cs`) is the base class for all hover-able world objects. On `Initialize()` it registers with `MapController.AllInteractables` and spawns a pooled `InteractableUI` element. Collision uses custom raycasting (not Unity physics colliders):

- **Sphere**: center + radius in world space
- **Box**: OBB test in local space, properly accounting for rotation and non-uniform scale

`CursorController` reads all interactables from `IMap` every frame, tests each against the cursor ray, then fires `OnCursorEnter()`, `OnCursorExit()`, `OnCursorHit(CursorController cursor)` on the interactable.

The base class now also exposes `OnBotHit()` for bot-triggered hits (separate from cursor hits), and tracks `CurrentLevel` for stage-aware behavior.

**Concrete implementations:**
- `Interactable_Minable` (`Interactable/Mineable/`) — asteroids; `OnCursorHit` triggers a drop from its `ResourcePool` SO
- `Interactable_BaseStation` (`Interactable/BaseStation/`) — the main hub; `OnCursorHit` and `OnBotHit` spawn Energy resources; listens to `LevelAdvanced` to swap stage visuals; delegates bot management to its `BotSpawner`

### Bot System

`BotSpawner` (`Assets/Scripts/Bot/BotSpawner.cs`) sits on the Base Station and manages a rotating `botContainer`. `AddBot(int)` spawns pooled `BotController` instances parented to that container at random radii. Each `BotController` fires on a `fireRate` timer, spawning a pooled `BulletController` that lerps toward the interactable's collider surface and calls `OnBotHit()` on arrival.

Bot count is driven by `GameData.BaseStationBots` (a `LeveledProperty`): when it levels up, `Interactable_BaseStation` computes the delta via `BotHitValue` and calls `BotSpawner.AddBot()`.

### Event System

`EventManager` implements `IEventManager` and provides game-wide pub/sub:

```csharp
IEventManager events = ServiceLocator.Current.Get<IEventManager>();
events.MiningStarted    += OnMiningStarted;
events.InvokeMiningStarted();
events.InvokeResourceChanged(resource, newAmount);
events.InvokeBuildingConstructed(buildingData);
```

Events: `MiningStarted`, `MiningStopped`, `ResourceChanged(ResourceData, float)`, `BuildingConstructed(BuildingData)`, `LevelAdvanced(int)`. `ObjectivesManager` listens to these to track objective progress.

### Resource System

`ResourceManager` (IResource) manages the inventory as `Dictionary<ResourceData, float>`:
```csharp
resourceMgr.Add(Resource.RawOre.Carbon, 10f);   // fires IEvent.ResourceChanged
resourceMgr.Get(Resource.RefinedMetal.Steel);    // returns 0 if missing
```

**Resource Tiers:**
- **Tier 1 (Raw)**: Energy (mined from Base Station), Carbon and others — mined from asteroids
- **Tier 2 (Refined)**: Refined Carbon and other metals — produced by Refinery
- **Tier 3 (Constructed)**: Constructed Cables and other elements — produced by Constructor

`ResourcePool` (ScriptableObject) defines probabilistic loot: an array of `ResourceDrop { resource, chance, value }`. `Interactable_Minable` holds one and draws from it on each cursor hit.

`ResourceController` is the pooled world UI prefab that represents a dropped resource. It runs a two-state FSM: FollowCursor → Drop (moves to `MainUI.ResourceContainer`).

### Objectives & Progression

`ObjectivesManager` (IObjectives) tracks level advancement via `ObjectivesConfig` SO. Each level has up to 3 active objectives of type `CollectResource` or `BuildStructure`. Progress is seeded — only amounts gained *after* an objective activates count. Events:

```
OnObjectiveProgress(ObjectiveData, float progress)
OnObjectiveCompleted(ObjectiveData)
OnLevelReadyToAdvance()
OnLevelAdvanced(int newLevel)
```

### ScriptableObject Patterns

**`GameData`** — root SO held by `GameManager`. Contains all `ResourceData` SO refs (as `rawResources`, `refinedResources`, `constructedResources` lists), an `InteractableData[]` array for all world interactables, and `LeveledProperty` stats: `HitRate`, `HitRadius`, `HitValue`, `BaseStationBots`, `BotHitValue`.

**`InteractableData`** — per-interactable SO (name + list of `LeveledProperty`) referenced from both `GameData.allInteractables` and each `Interactable` component in the scene.

**`LeveledProperty`** — upgradeable stat with exponential cost scaling:
```csharp
prop.Value           // current value
prop.NextUpgradeCost // cost to upgrade
prop.Upgrade()       // increments CurrentLevel
```

**`BuildingData`** — holds build cost (`ResourceRequirement[]`), `CanAfford()`, and `Consume()`.

### UI / Screen System

`MainUiController` (IMainUI) is the UI root. It holds an `FSM_StateManager` for UI states and exposes:
- `ResourceContainer` (Transform) — parent for pooled `ResourceController` UI
- `CursorCtrl` — cursor reference for screen-space positioning
- `ShowScreen(Screen)` — activates a Screen

`Screen` base class (`Assets/Scripts/UI/Screens/`) has `Show()` / `Hide()` (toggle active). `InteractableUI` is a pooled per-interactable overlay that tracks world→screen position in `LateUpdate` (unless `LockUIPosition` is set).

## Code Style

- Private fields use plain camelCase — no underscore prefix (e.g. `bool active`, not `bool _active`).
- Add a short comment on non-obvious logic — math, physics tricks, tricky timing — but skip anything self-explanatory. One line is enough.
- Keep classes small and focused — **200 lines maximum**. If a class grows beyond that, split responsibilities into separate classes.

### Constants & Resource Types

`Assets/Scripts/Constants.cs` holds two things:
- `Constants` — a static class for miscellaneous string/numeric constants
- `Resource` — a static class providing named access to `ResourceData` ScriptableObjects without needing SO references at every call site. Use it anywhere to reference a specific resource by type:
  ```csharp
  resourceCtrl.Add(Resource.RawOre.Carbon, 10f);
  ```
  The fields are populated in `ResourceManager.Awake()` from the SO references stored on `GameData`. **Add new resource types** by: (1) adding a `ResourceData` field to `GameData`, (2) adding a matching `static ResourceData` field inside the correct `Resource` subclass, and (3) wiring it in `ResourceManager.InitializeResourceTypes()`.

## Game Design Reference

Full design intent is in `GDD.md`. Key loop: hover-to-mine → collect resources → build structures → automate with bots/drones → supply spaceship for next stage.

**5 Progression Stages** (each unlocks new buildings and resources, camera zooms out on advance):
1. Repair Base Station (Energy only)
2. Upgrade hit value at Base Station (Energy only)
3. Resource Container revealed (Energy + Carbon)
4. Refinery revealed, hire Bots (Energy + Refined Carbon)
5. Constructor revealed, hire Bots for construction (Energy + Constructed Cables)

**Key structures:** Base Station (upgrades: Hit Value, Bots), Drone Spawner (auto-mines), Refinery (Raw → Refined), Constructor (Refined → Constructed), Resource Container (storage).
