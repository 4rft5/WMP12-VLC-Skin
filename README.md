# WMP12-VLC-Skin
A re-implementation of the Windows Media Player 12 theme for VLC.

<hr>

### Information

Many Windows Media Player skins float around for VLC, but I found them to be too different from the original source. This skin is intended to be as close of a replica as possible.

Since VLC's skin editor hasn't received an update since around 2009, it is not perfect, and many modern features (such as semi-transparent images) are flat out not supported. 

This skin is based off of the "Media Player 12" skin by sebweber, however has been vastly and dramatically modified to fit my needs.

<hr>

### Screenshots 

**Miniplayer:**

![image](https://github.com/user-attachments/assets/81b9a2c8-bd90-4289-a9b2-da38296af702)

**Miniplayer Volume Control:**

![image](https://github.com/user-attachments/assets/9628d992-383d-43ab-9030-cf792d889aed)


**Regular Player:**

![image](https://github.com/user-attachments/assets/10102b14-c9f8-4457-b4af-60f5309c84b9)

**Full Screen:**
![image](https://github.com/user-attachments/assets/75263cd7-9677-4100-9b98-80a0e7074a2f)

<hr>

## Usage

### Windows
Download the .vlt skinfile of your choice (Windows 10 or Windows 7) from releases and place it in your `C:\Program Files\VideoLAN\VLC\skins` folder.

### Linux
Download the .vlt skinfile of your choice (Windows 10 or Windows 7) from releases and place it in your `~/.local/share/vlc/skins2` folder. (For the system installed VLC.)
<details>
<summary>Arch Linux Users</summary>
Arch Linux users need to install `vlc`, `vlc-plugins-all` and `vlc-gui-skins2` to have a fully functional installation of VLC, so the system allows to browse and choose the skin. once selected, restart VLC to start using it.
</details>

Alternatively, open VLC, use CTRL+P to open preferences, Interface tab, and select "Use Custom Skin". Press `Choose:` to bring up the skins folder where your saved skin is.

<hr>

## Building the .vlt yourself

A `.vlt` file is nothing more than a gzipped tar archive with `theme.xml` at its root, so all you need is GNU Make and `tar`:

* **Linux/macOS:** both come preinstalled (or grab them from your package manager).
* **Windows 10 and later:** `tar` is preinstalled; install make with `winget install GnuWin32.Make` (or via Chocolatey/MSYS2).

Then, from the repo root:

```
make            # build both skins
make win10      # build only the Windows 10 skin
make win7       # build only the Windows 7 skin
make clean      # remove built .vlt files
```

If you don't want to install make, the raw command works too:

```
cd Windows10
tar -czf ../MySkin.vlt *
```

<hr>

## "Features"

The term "features" is more irony than reflecting actual features.
Because of the aforementioned lack of modern amenities in the editor, some things had to be bodged to work:

### Mini-Player

* To access the mini-player, use the icon next to the full screen icon.

* **To exit the mini-player and return to normal playback, click the maximize button at the top of the window.** Noteworthy, as you may not figure this out when 1st time using the skin.

* To exit the mini-player volume slider, click on the inside of its box or double click outside of the box. This is the only way the VLC Skin Editor supports "popups".

* Because of the lack of semi-transparency, the "hitbox" for the volume selector in the mini-player is just the arrow, nothing else. It's a little hard to click sometimes.

## Bugs

### Graphical Bugs

* Possible graphical issues - I'm a perfectionist, and I tried my best to replicate WMP12, however VLC's skin editor is EXTREMELY buggy, so some things may not work properly for you. If this is the case, I apologize, but there's nothing I can do.

### Function Bugs

* Linux OS users may see issues with cursors. This is not a bug with the skin, but some UI/UX bug between VLC and Linux.

* The progress bar (Click to Seek) can be clicked to seek through the song/video, but it may require a precise click from the user/click the progress slider then the seek bar. (The visible seek track is only 3 pixels tall and VLC's skin engine does per-pixel hit testing, so this cannot be improved without redrawing the slider artwork.)

* Exiting full-screen with the on-screen button returns you to the regular player. Exiting with ESC or double-click instead leaves you in the mini-player (VLC skins have no "fullscreen ended" event to hook, so the skin cannot restore the window automatically on those paths - click the maximize button to get back).

## Submitting Bugs

If you encounter a bug not listed above, feel free to make an issue on this repo. Please include your OS, version of the skin (ideally latest) and if it's Win7/10. Please also include a detailed description of the bug and how to replicate it.

## Support

Because almost nobody uses VLC skins nor makes them, support is hard to find. If you are good with XML, I would greatly appreciate advice or even pull requests on how to fix the bugs and make this skin better.

The skin has been tested in Windows 10 and Linux Mint and Arch.

MacOS is not supported as [VLC skins are not supported on MacOS.](https://images.videolan.org/vlc/skins.html)

If you want to edit the skin and the album art isn't working, this is because the VLC skin editor erases the album art tag in the xml file. You have to open the xml in the editor, make a copy of the existing xml, add the tags, then replace without editing anything and then export as vlt. I wish it wasn't that complicated, but that's how it is.

<hr>

## Credits

[Original `Media Player 12` skin by sebweber](http://www.videolan.org/vlc/download-skins2-go.php?url=windows_media_player_12.vlt)

Enjoy!
