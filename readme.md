# Ugly as Sin

A mod for [Hideous Destructor](https://codeberg.org/mc776/HideousDestructor), adding various optional features and mechanics. Originally started as *HD-Scavenger* with a focus on longer-term "survival" features, but rapidly expanded into a general purpose enhancement mutator.

## Download

The following download options are available:

* [**Stable**](https://github.com/caligari87/Ugly-as-Sin/releases/latest) - Stable version (usually) that attempts to target the same numbered version of Hideous Destructor and GZDoom. In other words, **Ugly as Sin v4.5.0** targets **Hideous Destructor v4.5.0** which targets **GZDoom 4.5.0**. Will sometimes include a **Stable Legacy** build for LZDoom compatibility when needed and possible.
* [**Unstable**](https://github.com/caligari87/Ugly-as-Sin/archive/master.zip) - Also sometimes called the `master` build. Constantly-updated version which targets the latest `main` development version of Hideous Destructor. Most up to date but may have bugs, testing features, or be broken.
* [**Unstable Legacy**](https://github.com/caligari87/Ugly-as-Sin/archive/refs/heads/legacy.zip) - The same as the **Unstable** build but targets LZDoom compatibilty when possible. May be missing features.

## Instructions

[Click here to go to the Manual](./manual/contents.md) (work in progress)

## Loading

Depending on which version you download, you may receive a file with a `.zip` or `.pk3` extension. Internally, these files are identical and GZDoom will load either type just fine. You should *not* unzip the file unless followin the advanced instructions below to customize your modules.

Ugly as Sin requires either the GZDoom or LZDoom, and *must* be loaded *after* Hideous Destructor in all cases. You may do this with a command-line or script file, or a graphical Doom-engine launcher like ZDL. Dragging-and-dropping the files onto GZDoom is *not* recommended as load order will be unpredictale.

**Example command line:**
```gzdoom -file HideousDestructor-main.zip Ugly-as-Sin-master.zip -skill 4 -warp e1m4```

### Advanced loading customization

Most of the time you will want to load the complete mod with all features enabled. However, some players may wish to customize their experience by only using certain features. This is supported throught the use of standalone code "modules" within the main mod.

**Instructions**

* Unzip the downloaded mod file. If the file has a `.pk3` extension it can be renamed to `.zip`.
* Delete the following files and folders:
  * All plain root-level files (`mapinfo.txt`, `zscript.zsc`, etc). These provide required "glue" to load the complete mod and will not be needed for loading individual modules.
  * The `buildscripts/` folder. This only contains automated scripts and template shims.
* You should now have a list of folders with names such as `core/`, `2fcartridges/`, `medical/`, etc. These are the modules which can be loaded individually. You may:
  * Load the desired folders directly into GZDoom.
  * Compress the contents of the desired folders into `.pk3` or `.zip` files.
* The **Core Module** (`core/`) *must* be loaded *before* any other modules, or errors will occur!

## Development

*Ugly as Sin* is always under rapid development and typically targets the "bleeding edge" `main` branch of Hideous Destructor. Bugs may be reported here as Github Issues, on the ZDoom forums in the Ugly as Sin thread, or on the Hideous Destructor discord server.
