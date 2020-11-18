# Ugly as Sin

A mod for [Hideous Destructor](https://codeberg.org/mc776/HideousDestructor), adding various optional features and mechanics. Originally started as *HD-Scavenger* with a focus on longer-term "survival" features, but rapidly expanded into a general purpose enhancement mutator.

## Features

Features are typically implemented as toggleable modules with various customizable settings. Modules and features can sometimes be changed mid-game, but typically it's recommended to start a new game or change/restart the map in order to ensure that proper initialization happens.

* **Hunger** - Requires the player to eat and drink or suffer fatigue penalties.
* [**Scarcity**](./manual/scarcity.md) - Reduce the supplies available to the player by despawning and/or breaking up ammo and item spawns.
* [**Fragshard Reducer**](./manual/fragfactor.md) - Specifies chance for enemy-reviving fragshards to spawn.
* **Allied Marines** - Friendly marine reinforcements that randomly replace human-type corpses.
* **Advanced AI** - Extra monster behaviors, such as searching, wounding, and flashlights/lasers.
* **Corpse Looting** - Human-type corpses can be searched for useful items.
* **Visual Weapons** - Changes Marines and Tangos sprites to reflect their current weapon.
* **Aim Swaying** - Extra inertia for player aiming, especially when fatigued.
* **Focus Zoom** - Slight zoom-in effect when focused or aiming and not moving or stunned.
* **Laser/Flashlight** - A PEQ-style combination laser and flashlight module.
* **Death Fading** - Fades the player's vision to black on death, faster or slower depending on final damage received.
* **Weapon Jamming** - Adds *very* rare jams to the pistol, SMG, and Liberator (can be cleared by simply pressing the fire button again).
* **Better Ammoboxes** - Simple lightweight reusable boxes that can be packed like magazines to reduce the bulk of loose ammunition significantly.
* **Weapon Sling** - Allows the player to "brace" their weapon anywhere, even while standing.
* **Flares/Glowsticks** - Simple disposable lightsources for marking rooms or wandering in darkness.
* **Respirator** - Rechargable emergency air tank for extended underwater excursions. Drains faster the more fatigued you are.
* **Enhanced Medical** - More detailed wound treatment options, including bleeding stabilization to complement bandaging, and the **Trauma Kit** item for treating old wounds manually without using the auto-suture gun.
* **YOLO mode** - EXPERIMENTAL, multiplayer-only mode where players can still be incapacitated but not killed, until all players are down. Enable with `UaS_YOLO true` in the console when launching a MP session.

More detailed documentation is in progress for all features and will be located in the `manual/` folder.

## Development and Download

*Ugly as Sin* is always under rapid development and typically targets the "bleeding edge" `main` branch of Hideous Destructor. Bugs may be reported here as Github Issues, on the ZDoom forums in the Ugly as Sin thread, or on the Hideous Destructor discord server.

To download, click the **Code** button on Github or use [this link](https://github.com/caligari87/Ugly-as-Sin/archive/master.zip) to obtain the latest version as a `.zip` file. This file may be loaded like a `.wad` or `.pk3` file directly into GZDoom *after* Hideous Destructor.
