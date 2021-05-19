# YOLO

You Only Live Once. Prevents players from dying, requiring other players to triage protecting and treating downed players. Has no effect or purpose in single-player.

## Settings

* `UaS_YOLO` [true|false] When using the combined UaS package, enables or disables the mechanic. Must be set from the command line when starting a multiplaer game.

## Mechanics

Internally, this works by giving all players the `BUDDHA` flag. This prevents players from dying but does not prevent damage from accumulating. To hopefully prevent soft-locking, wounds and burns are intenally capped to 100 points.
