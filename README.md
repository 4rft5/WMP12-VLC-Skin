# WMP12-VLC-Skin
A re-implementation of the Windows Media Player 12 theme for VLC.

<hr>

### Information

Many Windows Media Player skins float around for VLC, but I found them to be too different from the original source. This skin is intended to be as close of a replica as possible.

Since VLC's skin editor hasn't received an update in around 16 years, it is not perfect, and many modern features (such as semi-transparent images) are flat out not supported. 

This skin is based off of the "Media Player 12" skin by sebweber, however has been vastly and dramatically modified to fit my needs.

<hr>

### Screenshots 

**Miniplayer:**

![image](https://github.com/user-attachments/assets/a48e9584-4338-498a-9e0d-baef38345f1f)

**Miniplayer Volume Control:**

![image](https://github.com/user-attachments/assets/234f7604-530e-4435-a118-3531a06ed126)

**Regular Player:**

![image](https://github.com/user-attachments/assets/7909d5d7-cee5-4209-a7aa-34550710b33c)

**Full Screen:**
![image](https://github.com/user-attachments/assets/75263cd7-9677-4100-9b98-80a0e7074a2f)

<hr>

## Usage

Download the .vlt skinfile from releases and place it in your `C:\Program Files\VideoLAN\VLC\skins` folder.

Then, open VLC, use CTRL+P to open preferences, Interface tab, and select "Use Custom Skin". Press `Choose:` to bring up the skins folder where your saved skin is.

<hr>
## ``Features``

Because of the aforementioned lack of modern amenities in the editor, some things had to be bodged to work, such as the mini-player and the volume for the mini-player. I tried my best to implement them, however they're not perfect.

* To access the mini-player, use the icon next to the full screen icon.

* To exit the mini-player and return to normal playback, click the maximize button at the top of the window.

* To exit the volume slider, click on the border of its box. (I tried my best, this was the most "seamless" solution.

### Bugs

* I tried my best to get video playback to work with the miniplayer and controls, and got close, but at some point VLC gave up trying to hide the "you're supposed to hide this hex code" color, so I had to remove the controls. If you play a video in the mini-player, you have to click the maximize button to exit to get to proper controls.

* When going full-screen, the player enters the mini-player state because leaving it in the regular player left a pink box where album art is supposed to go, and closing all the windows (main/mini) trapped me, forcing me to close VLC from the taskbar.

* Text on mini-player may blend in with lighter colored album covers, again, limitation of the skin editor.

* Possible graphical issues - I'm a perfectionist, and I tried my best to replicate WMP12, however VLC's skin editor is EXTREMELY buggy, so some things may not work properly for you. If this is the case, I apologize, but there's nothing I can do.

* Because almost nobody uses VLC skins nor makes them, support is hard to find. If you are good with XML, I would greatly appreciate advice or even pull requests on how to fix the bugs and make this skin better.

<hr>

Enjoy!
