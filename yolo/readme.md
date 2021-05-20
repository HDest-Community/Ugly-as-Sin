# YOLO

You Only Live Once. Prevents players from dying, requiring other players to triage protecting and treating downed players. Has no effect or purpose in single-player.

## Settings

* `UaS_YOLO` - Only used when loading the combined UaS package. Must be set from the command line when starting a multiplayer game.
  * `true`/`false` - Enables or disables the mechanic, respectively

## Mechanics

Internally, this works by giving all players the `BUDDHA` flag. This prevents players from dying but does not prevent damage from accumulating. To hopefully prevent soft-locking, wounds and burns are intenally capped to 100 points.
