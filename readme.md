# Ugly as Sin

Ugly as Sin is a a mod for [Hideous Destructor](https://github.com/MatthewTheGlutton/HideousDestructor), adding various optional features and mechanics. Originally started as HD-Scavenger with a focus on longer-term "survival" features, but rapidly expanded into a general purpose enhancement mutator.

Features are implemented as configurable modules, any of which may be independently enabled or disabled as desired. The following modules are available:

* **Hunger** - Requires the player to eat and drink or suffer fatigue penalties. The `Timescale` setting controls the player's "burn rate" (1x = real-time). A messkit is provided in the player's inventory, while prepackaged rations will spawn randomly found around the level.
* **Scarcity** - Reduce the supplies available to the player by despawning and/or breaking up ammo and item spawns. The `Scarcity Rate` is the chance for a spawn to be removed, while the `Overspawn Ratio` allows some portion or usable version of the spawn to be left over.
* **Reloading Kit** - Allows manual reloading of 7.76mm rounds while in the map, instead of consolidating between maps. The `Auto-Continue` option lets the player hold down the action button instead of clicking at each step.
* **Weapon Sling** - Allows the player to "brace" their weapon anywhere, even while standing. The sling must be attached to the weapon by activating the inventory item. Hold the [Zoom] key to activate the sling. Sprinting will deactivate the sling.
* **Fragshard Reducer** - Specifies chance for enemy-reviving fragshards to be allowed to spawn. There is also an option to remove all existing fragshards from the level.
* **Friendly Marines** - Friendly marines may randomly replace human-type corpses, for some occasional much-needed reinforcements. Spawn rate is adjustable.
* **Advanced AI** - Adds extra behavior to monsters, such as searching the player's last known position, forgetting the player, and debuffing speed / aim when wounded.
* **Incapacitation** - A multiplayer-only module to improve the co-op experince. Allows players to be soft-killed, requiring medical treatment and revives from other players instead of respawning. Low frag limits recommended.
* **Looting** - Corpses of human-type enemies can be searched for useful items, such as ammunition or medical equipment. The `Loot Factor` rate is adjustable.
