# Hunger

Even the toughest operator needs fuel. This module adds food and drink mechanics, both for roleplay purposes and minor gameplay effects.

Consumables come in either edible or drinkable types. Both can provide energy (calories), and hydration (water). Having either or both will help give you an extra edge in performance.

But be warned, unsealed consumables may also spoil over time, so if you leave a package open for later or find something in the field, consume at your own risk!

This module required UaS_Food to also be loaded, if you are playing with a modular Ugly as Sin installation.

## Settings

* **Base Metabolism** `UaS_HungerMetabolism [true]` Enables "basal metabolic rate" energy burn. In other words, you will consume some amount of energy even while standing still doing nothing else. If this is disabled, you only burn energy while exerting yourself (jogging, sprinting, climbing, jumping, etc).
* **Stamina Boost** `UaS_HungerStamina [true]` If enabled, being fed and hydrated provides a minor boost to stamina regen.
* **Starvation** `UaS_HungerStarvation [false]` Enables negative fatigue effects if you don't stay fed and hydrated. (disabled by default)
* **Sickness Effects** `UaS_HungerSickness [true]` Enables sickness fatigue effects from eating spoiled/contaminated food.

If **Stamina Boost** and **Sickness Effects** are disabled, food basically only exists as a roleplay mechanic and has no effect on gameplay.

## Controls

* **Fire**: Eat or drink the consumable (if opened)
* **Reload**: Reseal a packaged consumable if possible to do so. Prevents spoilage
* **Unload**: Open a sealed consumable item.

## Mechanics

Consumed food and drink is not immediately available to your body. Instead, it must be digested first. In gameplay terms this happens fairly quickly; every 2 heartbeats you convert one consumed point of food/fluid into one point of energy/hydration for your body to use.

If the **Base Metabolism** option is enabled, you burn off one point of energy/hydration every 35 heartbeats.

When lightly jogging (`cl_run true`) you burn off an additional one point of energy/hydration every 5 heartbeats.


### Stamina Regen

If the **Stamina Boost** option is enabled and you are fed/hydrated, you will regain stamina faster when exerting yourself.

Internally, Hideous Destructor uses a "fatigue" counter. If this counter is at zero you are considered rested. As you sprint, jump, climb, or perform various other difficult physical actions, this counter increases. If this counter is too high, you cannot perform those actions as effectively.

When your fatigue counter is above zero, and you have either food energy or hydration in your system, the following can occur:

* Every 4 heartbeats you trade 1 point of hydration to reduce one point of fatigue.
* Every 6 heartbeats you trade 1 point of energy to reduce one point of fatigue.

This has a net effect of both helping you get rested quicker, and allowing you to push yourself a little farther. Experiment on the shooting range to see the difference!

### Starvation

If the **Starvation** option is enabled, you will experience negative fatigue effects from not being fed and hydrated.

Internally, your energy and hydration meters can go into slightly negative values. When this happens, your base "resting" fatigue level begins to increase (in other words, you won't be able to completely recover from exertion).

All operators are assumed to have eaten a hearty meal before starting a new mission, so you don't have to find food first immediately after dropping into a hot combat zone.

### Sickness

If the **Sickness Effects** option is disabled, the fatigue effects described here will not trigger (though the sickness sounds will still be present).

Over time, opened consumables may go bad or collect contamination from the surrounding environment. This is referred to as "spoilage". While most items you bring with you will be perfectly fine, items you find in the field may already be unfit for consumption.

The spoilage status of the consumable is shown while it's open. A bright green status means the consumable is safe. Each subsequent darker color means the consumable has an increasing *chance* to give you a point of "sickness" when you take a bite. Note this is not *guaranteed*; you might be able to eat some moldy bread and avoid the bad bits! But the worse something is spoiled, the worse your chances.

Whenever you "burn" energy as described in the sections above, you have a chance of triggering any sickness in your system. This will cause a gurgling stomach noise, and your fatigue will briefly skyrocket (you will also lose a portion of any undigested consumables in your system).


A single point of sickness will likely not cause too many problems, but the more points you have the more likely you are to have worse reactions or even chain them together (since sickness causes fatigue and fatigue in turn can trigger sickness).

You'll have to decide for yourself if eating a contaminated MRE is worth it!
