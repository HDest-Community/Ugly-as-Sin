# Stabilizer

A modern upgrade to the traditional rifleman's tension sling, the gyroscopic stabilizer can mitigate recoil impulses and provide a more comfortable shooting experience.

## Details

* **Actor Class**: `UaS_GyroStabilizer`
* **Loadout Code**: `stb`

## Settings

* **Stabilizer Spawns Enabled** `UaS_StabilizerSpawns`
  * On `true` = Enables spawns on vanilla weapons (default)
  * Off `false` = Disables spawns (can still be used in loadouts)

## Controls

* **Toggle/Activate**: Pairs a stabilizer mount to the current weapon, if compatible.
* **Use** + **Toggle/Activate**: Un-pairs a stabilizer mount from current weapon.

## Mechanics

The stabilizer will attempt to reduce weapon recoil and other motions toward zero. The amount of reduction possible depends on your movement speed, swinging the weapon around, and sustained fire.

Up to three weapons can be paired to the stabilizer. If all three pairing slots are used, a weapon will need to be un-paired in order to free up a slot.

In order to prevent undesired gyroscopic runaway effects, the stabilizer requires active user control in order to obtain maximum performance. Performance limiters may be applied if the stabilizer determines the user is impaired or otherwise unable to safely operate the system.
