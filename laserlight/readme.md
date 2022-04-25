# Laser / Flashlight

This item provides a combination laser and flashlight attachment for your weapon to facilitate aiming and visibility, similar to the real-life [AN/PEQ-2](https://en.wikipedia.org/wiki/AN/PEQ-2). The module can be toggled between flashlight mode, laser mode, or both.

Human-type enemies (undead, jackboots, and marines) can use the flashlight and/or laser sight in darker areas, which may make them easier to spot. Using the NVGs will also make all lasers significantly more visible than with the naked eye.

## Details

* **Actor Class**: `UaS_LaserLightModule`
* **Loadout Code**: `llm`

## Settings

* **Preferred Flashlight Mode** `UaS_LLM_LightMode`
  * `0` Off
  * `1` Visible Only
  * `2` IR Only
* **Preferred Laser Mode** `UaS_LLM_LaserMode`
  * `0` Off
  * `1` Visible Only
  * `2` IR Only
* **Preferred Laser Color** `UaS_LLM_LaserMode`
  * `FF 00 00` Red (650 nm, 670 nm)
  * `FF 1B 00` Red (638 nm)
  * `FF CC 00` Yellow-Orange (593 nm)
  * `FF DC 00` Yellow (589 nm)
  * `50 FF 00` Green (532 nm)
  * `24 FF 00` Green (520 nm)
  * `12 FF 00` Green (515 nm) (Default)
  * `00 F5 FF` Blue (488 nm)
  * `00 A8 FF` Blue (473 nm)
  * `00 33 FF` Blue (450 nm)
  * `54 00 D9` Violet (405 nm)
  * It is also possible to use color names like `RED` or custom hex values like `FF 00 00` in this CVar, though not everything will look right.
* **Flashlight Beams** `UaS_FlashlightParticles` Enables or disables the particle-based "volumetric light shaft" effect on flashlights. This setting does not have a major impact on performance.

## Controls

* **Toggle/Activate**: Toggle the current mode on or off.
* **+ Hold Use**): Open the configuration screen.
  * `fire` = Cycle flashlight mode
  * `altfire` = Cycle laser mode
