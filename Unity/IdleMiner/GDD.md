# GDD — Idle Miner

## Concept

### A cozy incremental farming game in space

- Idle/incremental game with an isometric top-down view
- Use "Tower Wizard" as a inspiration
- No player character — player controls only the mouse cursor
- Upgrade a small crystal which gives energy
- Get more and more energy
- Use bots and drones to speed up energy creation
- Use Refinery and constructors to build new resources. Dronespawners for minging raw resources
- Gameplay is split in stages. Each stage reveals new ui elements and stage elements
- Goal: Generate enough energy and build a spaceship to fly to the next stage

## Core Features

- Create Energy by tapping on Crystal
- Hire bots to create more Energy automatically
- Build a dronespawner to mine raw resources
- Build a refinery to refine raw resources
- Build Constructors to construct spaceship panels, cables and etc. 
- Camera needs to be panable and zoomable on an isometric plane
- Mouse can also speed up mining by holding down the left mouse button

## Major Progression Stages for the Base

### Stage 1:

#### Required Resources:

- Energy
- Tap the crystal to dig it out
- Crystal glows and starts floating (cam zoom out)

### Stage 2:

#### Required Resources:

- Energy
- Tap Crystal more to get more energy
- Purchases a bunch of hit value upgrades
- Tap until enough energy to go to next stage
- Crystal grows again (cam zoom out)

### Stage 3:

#### Required Resources:

- Energy and Wisdom
- First bots can be hired to speed up energy creation
- A satellite can be build through the UI <- costs energy
- Base Grows again (cam zoom out and unlocks (can be dragged now))

### Stage 4:

#### Required Resources:

- Energy
- Raw Carbon
- A Dronwspawner can be purchased using energy
- Hire Bots using energy crystals
- Base Grows again

### Stage 5:

#### Required Resources:

- Energy
- Refined Carbon
- A Refinery building can be purchased
- Hire bots to speed up construction
- Base Grows again

### Stage 6:

#### Required Resources:

- Energy
- Constructed Metal Plates
- A Constructor building can be purchased
- Base grows again

## Key Structures (Interactable Objects)

### Base Station (single bigggest structure) <- This is a crystal at the beginning

The Base Station is the main building of the player's base.
It holds the main objectives for the player which resources to collect for the next stage. Player can upgrad here.

| Upgrades       | Cost   |
| -------------- | ------ |
| Hit Value      | Energy |
| Bots           | Energy |
| Bots Hit Value | Wisdom |

- #### Outputs:

  - Energy Resource

### Satellite -> Multiple

Purchased through UI
Creates wisdom over time.
Outputs knowledge which is needed for other properties to upgrade

| Upgrades | Cost   |
| -------- | ------ |
| Slots    | Energy |
| Speed    | Wisdom |

#### Outputs:

- Wisdom Resource


### Drone Spawner -> Multiple

Purchased through UI
Creates Drones which can mine resources automatically

- #### Upgrades:

  - Drone Amount
  - Drone Speed

#### Refinery -> Multiple

Purchased through UI
Takes mined resources and refines them into more valuable materials.
Outputs refined metals which need to be put into a constructor

- #### Upgrades:

  - Refining speed
  - Refinery slots

### Constructor -> Multiple

Purchased through UI
Takes refined metals and constructs buildings and other things like vehicles

- #### Upgrades:

  - Construction speed
  - Construction slots

## Resource Tiers

- Tier 1: Raw Ore (manualy minded or automated by drones)
- Tier 2: Refined Metals (A refinery creates refined metals from raw Ore)
- Tier 3: Constructed elements which can be used for buildings (Constructor)
