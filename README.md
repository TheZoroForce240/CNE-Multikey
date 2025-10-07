# CNE Multikey

A mod for [Codename Engine](https://github.com/CodenameCrew/CodenameEngine) that adds multikey support (1K - 9K).

![](https://github.com/TheZoroForce240/CNE-Multikey/blob/main/github/main.png)

This mod does not include multikey in the chart editor! This [fork](https://github.com/TheZoroForce240/CodenameEngine) here adds support for it inside the chart editor, but you will need to compile it yourself! (there is alternatively a build included with one of my [mods](https://gamebanana.com/mods/382037)) 

## Features
- 1-9K support, with a fully customizable xml to add and edit key counts
- Custom Controls
- Mid song key count changes
- Different key counts per strumline
- Gamepad support

![](https://github.com/TheZoroForce240/CNE-Multikey/blob/main/github/controlsmenu.png)
![](https://github.com/TheZoroForce240/CNE-Multikey/blob/main/github/controlsmenugamepad.png)

## How to use

Copy over the files inside the assets folder, and put them inside of your mod folder. If you're already using a global script, you may want to merge the global script to enable gamepad support inside of menus (unless gamepad support is added properly into CNE in the future) but you don't have to.

Add a "Set Key Count" event and set the values, the first event in the song will be the default key count, and any afterwards will make it change mid song.

![](https://github.com/TheZoroForce240/CNE-Multikey/blob/main/github/event.png)

For importing existing charts from other engines see [here](https://www.youtube.com/watch?v=Ic-4EfDPbd8)

## Credits

- TheZoroForce240 - Coding
- SrPerez - Multikey note assets (from The Shaggy Mod)
