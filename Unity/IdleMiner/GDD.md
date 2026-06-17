# GDD — Idle Miner

## Concept
### A cozy incremental farming game in space

- Idle/incremental game with an isometric top-down view
- Use "Tower Wizard" and "Farminatta" as a inspiration
- No player character — player controls only the mouse cursor
- Mine resources like asteroids, satellites and space debris
- Use bots and drones to speed up mining
- Camera should zoom out on every new stage of the game to give a feeling of scale and power
- Goal: Unlock a ever growing space station on a asteroid

## Core Loop
- Hover cursor over objects to mine
- Use mined resources for base building
- Go back to mining again

## Core Features
- Mining of interactable Objects
- Hire bots / drones to mine resources automatically
- Camera needs to be panable and zoomable on a isometric plane
- Mouse hover with a radius does Mining or resource deployment
- Mouse can also speed up mining by holding down the left mouse button

## Major Progression Stages
- Repair the energy generator
- UNLOCK Energy generator (cam zoom out)
- Mine more energy to purchase a drone


## Progression
- Early: manual mining, drop first resources at the base
- Mid: drones automate mining, Refinery unlocks
- Mid: Constructor unlocks, allowing for more complex buildings
- Late: asteroid transforms from bare rock to lush green world

### Progression 10min
- 00:00: Player starts on a Empty Asteroid. With a broken energy generator
- 00:05: Player needs to tap 10 times on the energy generator to get it working again.
- 00:20: First buildings get revealed, but they are locked. Player needs to mine resources to unlock them
- 00:30: Uses mined resources to drop at the resource container 
- 00:40: Player runs out of resources and needs to press "Mine" again
- 00:45: Player mines again
- 00:50: Player now has enough resources to build first Drone Spawner
- 01:00: Player has to press "Build" to build the first Drone Spawner. Bots spawn to drop resources from the container
- 01:30: Bots complete the drone spawner
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
