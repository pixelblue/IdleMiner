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
- 00:50: Player now has enough resources for the first Drone Spawner
- 01:30: Player keeps mining until enough resources for the first Refinery

## Key Structures
### Command Center (single bigggest structure)
The Command Center is the main building of the player's base. 
It's purpose is for player upgrades which are
- Hit Radius
- Max Energy
- Hit Rate

### Drone Spawner (Multiple buildings can be placed)
Automates the mining process by sending out drones to mine resources.
- Drones amount
- Drones mining speed
- Drones Resource capacity

### Refinery (Multiple buildings can be placed)
Takes mined resources and refines them into more valuable materials.
Outputs refined metals which need to be put into a constructor
- Refining speed
- Refinery slots

### Bots Spawner (Multiple buildings can be placed)
Automates collecting spawned resources from the Refinery and puts them into the constructor
- Bots amount
- Bots speed
- Bots Resource capacity

### Constructor (not sure if single or multiple ones)
Takes refined metals and constructs buildings and other things like vehicles
- Construction speed
- Construction slots

## Resource Tiers
- Tier 1: Raw Ore (manualy minded or automated by drones)
- Tier 2: Refined Metals (A refinery creates refined metals from raw Ore)
- Tier 3: Constructed elements which can be used for buildings (Constructor)
