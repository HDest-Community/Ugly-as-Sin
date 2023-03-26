# Advanced AI

Tweaks monster behavior mechanics for a more nuanced and immersive gameplay experience.

## Settings

* **Searching** `UaS_AI_Searching` Enables monsters tracking the player's last known position and performing simple searches.
* **Wounding** `UaS_AI_Wounding` Monsters will cry out in pain and lose combat ability the more injured they are.
* **Lights / Lasers** `UaS_AI_Flashlights` In dark areas, "hitscan" enemies will sometimes use flashlights and laser sights. Lasers are always enabled for cyborg or robot enemies.
* **Lasers Always On** `UaS_AI_AlwaysLasers` Forces lasers on at all times for human-type enemies.
* **Stealth** `UaS_AI_Stealth` Allows the player to hide in very dark areas (shown with a blue fade at the bottom of the screen).
* **Enemy lights when incapped** `UaS_AI_Playdead` Chance for monsters to disable their light/laser when knocked down.

## Mechanics

**WARNING:** *Some features in this module may cause significant performance issues on weaker computers or maps with many monsters! If you experience lag or framerate issues, try disabling the Lights, Stealth, or Searching features.*

### Searching

Monsters that have targetted the player will behave as normal while in line-of-sight. When line-of-sight is broken, the monster will note the player's last known location and try to reach it (instead of the stock behavior or tracking the player through walls).

If the monster reaches the player's last known location, it will check a 180-degree cone, place a path node in the longest visible direction, and attempt to reach it. If a monster can't reach the node, it will pick a new one.

Monsters will repeat this pattern for 30-60 seconds before giving up the search and returning to an idle state if the player isn't found.

### Wounding

A Wounded monster will receive a few debuffs which scale depending on how badly it has been damaged.

* **Aim jittering**: Monsters will shake with pain, causing their aim to be thrown off.
* **Pain jolts**: Monsters will occasionally cry out in pain, interrupting any action they were attempting to make (including attacks).
* **Speed reduction**: Monsters will lose mobility, making them slower to pursue the player or retreat.
* **Fright**: Wounded monsters are significantly more likely to enter a fear/retreat state and attempt to flee from the player.

### Lights

When a human-type monster (zombie, jackboot, marine, etc) enters or looks into a dark sector (less than 128 brightness), it will havea chance to enable a flashlight or laser sight. The darker the sector, the more likely the monster is to enable a light.

(While ostensibly more "realistic" and "immersive", this is admittedly mostly intended to make things more fair for players when fighting gun-toting enemies that can see in the dark and through fog.)

Monsters which are about to shoot at target will flash their lights rapidly in an attempt to disorient and confuse the player.

Robots also make use of this feature. DERPs will always use flashlights, and HERPs will always use a laser beam.

### Stealth

If the player is in a very dark sector, a blue tint may appear at the bottom of the screen to indicate the player is "concealed". Crouching and moving slow increases this threshold, moving quickly or shooting reduces it.

A concealed player will be given the `SHADOW` flag, causing monsters to be less accurate in targetting. Additonally, monsters will quickly lose track of concealed players.

**WARNING:** *The stealth feature can interfere with the Blursphere / Precious and may cause the cloaking feature to break. This is a known issue and currently has no good solution at this time.*
