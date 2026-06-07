# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

**IdleMiner** is a cozy incremental/idle farming game set in space, built with Unity 6 (6000.3.10f1). The player mines asteroids by hovering a cursor over them, gathers resources, and builds structures to eventually terraform an asteroid into a lush world. There is no player character — only mouse/cursor interaction.

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

Scripts live in `Assets/Scripts/` and split into two top-level folders:
- `GEN/` — reusable engine scaffolding (not game-specific)
- `Services/`, `UI/` — game-specific code

### Service Locator Pattern

All runtime services are registered via `ANS.Common.ServiceLocator.ServiceLocator`. The `ServiceContainer` MonoBehaviour (`Assets/Scripts/Services/ServiceContainer.cs`) bootstraps the locator at `[DefaultExecutionOrder(-300)]` during `Awake`. Services must implement `IGameService`. Retrieve via:
```csharp
ServiceLocator.Current.Get<IPool>();
```
New services: implement `IGameService`, register in `ServiceContainer.Initialize()`.

### Finite State Machine

`FSM_StateManager` (`GEN/FSM/FSM_StateManager.cs`) manages game/UI states. States are child GameObjects that extend `FSM_GameState` (abstract: `OnActivate` / `OnDeactivate`). The manager discovers all states in its children on Awake. Transition via `ChangeState<T>()`. The UI uses this FSM via `State_UI_Base` in `Assets/Scripts/UI/States/`.

### Object Pool

`PoolManager` (`GEN/Pool/PoolManager.cs`) implements `IPool` and is registered as a service. Pools are pre-configured in the Inspector via `PoolCategory[]` arrays, then created by calling `CreatePools()`. Spawn/release by string name:
```csharp
pool.Spawn("prefabName", position);
pool.Release("prefabName", component);
```
`ObjectPool<T>` is the generic typed implementation; `PoolManager.CreateTypedPool()` is a safe factory — add new supported component types there (no reflection).

### Input System

`TouchController` (`GEN/InputDevice/TouchController.cs`) is the single point of input truth, exposing `HeldDown`, `TouchReleased`, `SwipedUp`, `SwipedDown` events. At runtime it activates either `PCInputController` (mouse + spacebar) or `MobileInputController` based on `Application.isMobilePlatform`. UI event system overlap is always respected — all input is suppressed when the pointer is over a UI element.

### Singleton

`Singleton<T>` (`GEN/Common/Singleton.cs`) is a `MonoBehaviour` base for scene-bound singletons. Prefer `ServiceLocator` for systems that need decoupled access.

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

Full design intent is in `GDD.md`. Key loop: hover-to-mine → collect resources → build structures → automate with drones → terraform asteroid. Three resource tiers: Raw Ore → Refined Metals → Constructed Elements. Core structures to implement: Generator, Drone Spawner, Resource Container, Refinery, Constructor.