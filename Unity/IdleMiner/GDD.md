# GDD — Idle Miner

## Concept
### A cozy incremental farming game in space

- Idle/incremental game with an isometric top-down view
- No player character — player controls only the mouse cursor
- Mine asteroids, satellites and space debris to gather resources
- Goal: craft and terraform your own asteroid and make it green

## Core Loop
- Hover cursor over objects to mine
- Use mined resources for base building
- Go back to mining again

## Core Features
- Mining costs energy. If the player doesn't mine, no energy is depleted.
    Which allows them for discovery and it is less stressfull
- Camera needs to be panable on a isometric plane, but not zoomable. This allows for a more focused experience and less overwhelming for the player
- Mouse hover with a radius does Mining or building or resource deployment.

## Progression
- Early: manual mining, place first Generator
- Mid: drones automate mining, Refinery unlocks
- Mid: Constructor unlocks, allowing for more complex buildings
- Late: asteroid transforms from bare rock to lush green world

### Progression 10min
- 00:00: Player starts in Asteroid field: "Hover over asteroids to start mining"
- 00:05: Player also needs to collect the mined resources
- 00:15: Timer runs 10 - 15seconds
- 00:15: When timer runs out player get's automatically transported to the "Base"
- 00:30: Uses mined resources on the first buildings 
- 00:40: Player runs out of resources and needs to press "Mine" again
- 00:45: Player mines again
- 00:50: Player now has enough resources for the first Generator

## Key Structures
- Generator (creates energy for all other buildings)
- Drone Spawner (creates drones that automate mining)
- Resource Container (stores mined resources, can be upgraded for more capacity)
- Refinery (creates refined metals from raw ore)
- Constructor (creates constructed elements from refined metals, used for building)

## Resource Tiers
- Tier 1: Raw Ore (manualy minded or automated by drones)
- Tier 2: Refined Metals (A refinery creates refined metals from raw Ore)
- Tier 3: Constructed elements which can be used for buildings (Constructor)
