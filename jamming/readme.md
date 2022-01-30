# Weapon Jamming

Provides a rare chance for additional guns (besides the Boss and ZM66) to suffer from failure-to-fire malfunctions.

## Details

While most weapons that aren't the ZM66 can go thousands or even tens of thousands of rounds between failures, even the most reliable rifle can get gunked up. Weapons affected by this setting include the semi-auto pistol, the SMG, and the Liberator battle rifle. Much like the Boss rifle, each firing of the weapon adds a very small amount of dirt and grime to the action. Eventually, This can cause the weapon to fail in some way, typically by not ejecting or feeding the next round properly.

That said, most firearms are more reliably constructed than the Boss or ZM66, so such malfunctions are fortunately rare in occurance and minor in severitry. Additionally, in extremely rare instances, a round might simply be a dud. In any case, simply work the action manually to clear the malfunction and continue shooting. If you notice it's jamming more often than not, some simple field maintenance can help smooth things out.

## Settings

* **Weapon Jamming** `UaS_JammingEnabled` Enable or disable jamming
* **Weapons start dirty** `UaS_JammingStartDirty` Chance (and amount) for weapons to be already dirty when picked up.
  * None / Clean `0.0` = No weapons start dirty.
  * Some / Slightly Used `0.33`
  * Most / Very Dirty `0.66`
  * All / Filthy `1.00`

## Controls

* **Fire**: If failed to fire, clear the malfunction.
* **Unload**: While the gun is empty, hold to try and clean out some gunk.

## Mechanics

Internally, a bell-curve average is used to check and set most dirt values for weapons. For example, the Liberator has an upper jamming threshold of 10,000 rounds, and accrues one point of dirt per round. The jam checker will *usually* roll values *around* the middle of that range. If that check is *below* the amount of accumulated dirt, the weapon will jam.

The thresholds for the other weapons are 7500 for the Pistol, and 5000 for the SMG (the latter being due to the fact that suppressed weapons run much dirtier).

This same random bell curve (with a 2x bonus in the player's favor) is used to determine successful cleaning. If the check value is below the dirt value, 25% of the dirt will be removed. As semiautomatic firearms are more complex than bolt-action weapons like the Boss Rifle, they can't be completely cleaned without field-stripping. (deeper cleaning mechanics may be added in a future update)
