# GDD — Idle Miner

## Concept
### A cozy incremental farming game in space

- Idle/incremental game with an isometric top-down view
- Use "Tower Wizard" as a inspiration
- No player character — player controls only the mouse cursor
- Mine resources like rocks, asteroids, satellites and space debris
- Use bots and drones to speed up mining
- Gameplay is split in stages. Each stage reveals new buildings and new resources to mine
- Goal: Provide your spaceship with resources to fly to the next stage

## Core Features
- Mining of interactable Objects
- Hire bots / drones to mine resources automatically
- Camera needs to be panable and zoomable on a isometric plane
- Mouse hover with a radius does Mining or resource deployment
- Mouse can also speed up mining by holding down the left mouse button

## Major Progression Stages for the Base
### Stage 1:
#### Required Resources:
    - Energy
- Repair the Base (tapping on it) 
- Base repaired (cam zoom out)
### Stage 2:
#### Required Resources:
    - Energy
- Tap Base more to purchase more hit value with energy resource
- Purchases a bunch of hit value upgrades
- Mine until enough energy to go to next stage
- Base grows again (cam zoom out)
### Stage 3:
#### Required Resources:
    - Energy
    - Carbon
- A Resource Container building is revealed
- Base Grows again (cam zoom out)
### Stage 4:
#### Required Resources:
    - Energy
    - Refined Carbon
- A Refinery building is revealed
- Hire Bots using energy
- Base Grows again (cam zoom out)
### Stage 5: 
#### Required Resources:
    - Energy
    - Constructed Cables
- A Constructor building is revealed
- Hire bots to speed up construction
- Base Grows again (cam zoom out)


## Key Structures (Interactable Objects)
### Base Station (single bigggest structure)
The Base Station is the main building of the player's base. 
It holds the main objectives for the player which resources to collect for the next stage. Player can upgrad here.
- #### Upgrades:
    - Hit Value
    - Bots

### Refinery -> Multiple
Takes mined resources and refines them into more valuable materials.
Outputs refined metals which need to be put into a constructor
- #### Upgrades:
    - Refining speed
    - Refinery slots

### Constructor -> Multiple
Takes refined metals and constructs buildings and other things like vehicles
- #### Upgrades:
    - Construction speed
    - Construction slots

### Drone Spawner -> Multiple
Creates Drones which can mine resources automatically
- #### Upgrades:
    - Drone Amount
    - Drone Speed

### Mineable Object -> Multiple
Those can be multiple different types of objects, like rocks, asteroids, satellites and so on
- #### Upgrades:
    - Resource slots

## Resource Tiers
- Tier 1: Raw Ore (manualy minded or automated by drones)
- Tier 2: Refined Metals (A refinery creates refined metals from raw Ore)
- Tier 3: Constructed elements which can be used for buildings (Constructor)
