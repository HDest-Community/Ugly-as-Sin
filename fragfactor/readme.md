# Fragshard Reducer

In normal Hideous Destructor play, frag shards can spawn from various sources: Dying monsters, exploding barrels, event from the player themselves on harder difficulties.

This module is triggered whenever a shard spawns, and randomly deletes the spawned shard according to the rate specified in the settings.

## Settings

* **Frag Spawn Rate** `UaS_FragSpawnRate` Controls the rate at which frag is allowed to spawn.
  * `0` = Disabled, no frag shards will spawn from any sources.
  * `100` = frag shards will spawn at normal Hideous Destructor rates (default).
* **Remove Frag** - Removes all frag shards from the level.
