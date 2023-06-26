# Scarcity

## Settings

* **Scarcity Rate** - The random chance for map-spawned items to be removed / replaced upon map load.
* **Overspawn Ratio** - Allows for some usable portion or variant to remain in place of the removed item.

## Mechanics

As the exact workings of this module can be obscure or confusing, the section below will give detailed explanation of how this module decides to affect various spawns and clarify the interaction of the two setting sliders.

The **Scarcity** slider determines the percentage of each type of map spawn to be affected by the scarcity module. For example, if there are 16 ZM66 magazines on the map and scarcity is set to 50%, then 8 of them will be marked to be altered by the scarcity system. This generally means the original map spawn is destroyed, denying the player its resources and forcing a more "scavenging" style of play. If you have the Looting module enabled, some of these items can be found in the inventories of nearby humanoid monsters (such as zombies).

As higher scarcity levels can prove *very* punishing due to the loss of ammo and medical items, the **Overspawn** slider can be used to fine-tune this behavior. Overspawning controls what's spawned in place or left over when the affected item gets removed. How exactly this is handled depends on the class and type of item, but the general rule is that the spawn is replaced by a *random* amount of the item's sub-type, and the *maximum* random amount is `ITEM_AMOUNT * OVERSPAWN`.

* Magazines/clips are replaced with some combination of loose rounds, and partially-packed (sometimes empty) clips/mags.
* Boxes of ammo are replaced by loose rounds and partially-filled boxes. Rocket grenade boxes may be replaced with armed/dud grenades (which can explode on their own, be warned).
* Medikits are "broken open", into the auto-suture gun (sutures and Second Flesh within the gun are randomly reduced), stimpacks, and new Second Flesh modules (see next section). Stimpacks and zerk packs are broken open and may spawn either used or still-working loose injectors.
* Bundles of frag grenades may have some grenades "used", leaving just the pins/spoons.
* Automaps and lite-amp goggles are replaced with glitched/broken versions (see next section).

The following examples describe what happens with various combinations of **Scarcity** and **Overspawn**:

* Scarcity 0 / Overspawn (ignored) - Equivalent to disabling the module.
* Scarcity 50 / Overspawn 0 - Half the spawns will be removed completely.
* Scarcity 100 / Overspawn 0 - All the spawns will be removed completely.
* Scarcity 50 / Overspawn 50 - Half the spawns will be replaced by up to 50% of each spawn's max amount.
* Scarcity 100 / Overspawn 100 - All the spawns will be replaced by up to 100% of each spawn's max amount.

### New or Altered Item Types

In an attempt to make scarcity more interesting, some items have been replaced or augmented with new functionality:

* Medikits: The auto-suture gun now has *reloadable* Second Flesh modules, which may be removed from the currently-held medikit with the `Unload` key, and inserted with the `AltReload` key. Modules may also spawn near broken-open medikits.
* Automap: Now comes in "glitched" and "broken" variants.
  * Glitched automaps have a flickering screen and will fail to pick up if the screen is dark, so wait for it to flicker on.
  * Broken automaps simply have a blank screen, but can often be coaxed into a working/glitched state by repeated pickup attempts
* Lite-Amp: The NVGs / lite-amp goggles now come in "glitched", "broken", and "smashed" variants, determined by an internal "brokenness" variable which can range from 0-500. The calculation to determine this value is complex, but is influenced by the **Overspawn** setting (higher overspawn == lower brokenness).
  * Glitched goggles (0-400 broken) may still be picked up and used, but will flicker badly (as if the battery were low).
  * Broken goggles (400-450 broken) may be picked up and used, but provide no light amplification and are basically only useful as green sunglasses. In the future, these may be repaired with the proper components or by changing maps, and so will still be worth picking up.
  * Smashed goggles (> 450 broken) are *incredibly* rare even at the most extreme scarcity / overspawn settings. Unfortunately these cannot be picked up or repaired at all.
