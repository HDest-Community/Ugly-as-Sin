# Medical

*wip*

This module adds some new medical tools, and slightly changes how wounds work.

## Wound Stabilization

Wounds slowly stabilize themselves after you patch them up with a bandage.
The rate of the stabilization also changes depending on how tight the bandage is and how big the wound is.
You can check how stable your wound is based on how it "feels".
The more stable your wound is, the less it'll bleed when not bandaged, which will help a lot when you have to treat it with the Trauma kit.
That said, it should be noted that you don't have to stabilize your wounds before treating them.

Additionally, bandages only fall off if they get `very loose`, so make sure to check your bandages every now and then.

## Trauma kit

* **Actor Class**: `UaS_TraumaKit`
* **Loadout Code**: `trk`

The alternative medikit. In order to let your wounds heal up, you need to operate on it using the Trauma kit.
Use the correct tools to treat whatever is stopping your wounds from healing up. (note: try to get all of the listed statuses close to green)
The wound will only start to heal up once it becomes green in the wounds list.

## Credits
 - bunyear/Tapwave: Made the trauma kit tool sprites
