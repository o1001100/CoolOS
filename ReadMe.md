# CoolOS for [Flipper Zero](https://flipperzero.one/)

Forked from [Flipper-Xtreme](https://github.com/ClaraCrazy/Flipper-Xtreme) with minimal changes to included apps and files

This is my personal firmware and you probably don't want to use it :)

Resources I use are availiable [here](https://github.com/o1001100/cool-resources)

## Installation

### Install using qFlipper or mobile app

Download the qFlipper package (.tgz) from the latest release page

Open qFlipper or the mobile app and connect your Flipper

Click Install from file

Select the .tgz you downloaded and wait for the update to complete

### Install from updater package

Download the zipped archive (.zip) from the latest release page

Extract the archive. This is now your new Firmware folder

Move the firmware folder to the update folder on the Flipper's SD with qFlipper or by mounting the SD to your computer/phone

On the Flipper, hit the Arrow Down button, this will get you to the file menu. In there simply search for your updates folder

Inside that folder, select the Firmware you just moved onto it, and run the file thats simply called Update

## Building

Build like any other firmware or use my build script `compile`

run `./compile` to build a full updater package with apps included

run `./compile -h` for help with more options

## Credits

#### Firmware
Based on [Flipper-Xtreme](https://github.com/ClaraCrazy/Flipper-Xtreme) by ClaraCrazy

Thanks to DarkFlippers for [Unleashed](https://github.com/DarkFlippers/unleashed-firmware) and the Flipper Zero team and community for the [Official Firmware](https://github.com/flipperdevices/flipperzero-firmware)

#### Apps

Included apps are the same as in Xtreme [(list of apps and authors)](https://github.com/ClaraCrazy/Flipper-Xtreme/wiki#included-apps) with the addition of:

[Flipagotchi](https://github.com/Matt-London/pwnagotchi-flipper/tree/main/flipagotchi) from the [Pwnagotchi-Flipper interface](https://github.com/Matt-London/pwnagotchi-flipper) project by Matt-London

[Flipper Zero DND Dice](https://github.com/Ka3u6y6a/flipper-zero-dice) by Ka3u6y6a

[flipper-zero-hex-editor](https://github.com/dunaevai135/flipper-zero-hex_editor) by dunaevai135

[flipper-zero-video-player](https://github.com/LTVA1/flipper-zero-video-player) by LTVA1

[fz-schip](https://github.com/Milk-Cool/fz-schip) by Milk-Cool

[ir_scope](https://github.com/kallanreed/unleashed-firmware/tree/dev/applications/external/ir_scope) by kallanreed

[flipperscope](https://github.com/anfractuosity/flipperscope) by anfractuosity

[flipperzero-text2sam](https://github.com/Round-Pi/flipperzero-text2sam) by Round-Pi

This Firmware has 30 levels, not just the basic 3 the official one has.

With this new system in place, it allows for some cool stuff like locking animations behind a certain level. This can be done fairly easy: The idle_animations are tied to the level system. Specifically, the `Min level` variable of your manifest file is used here. Each level you reach, unlocks a new animation. The higher your level, the more animations people can see.

-----
<br>
<h2 align="center">List of changes:</h2>

Note: This repo is always updated with OFW & Unleashed. No need to mention all those here. We will only mention **our** changes that we can actually be credited for.

```txt
[Added]

- Xtreme App
- Asset Packs
- More UI options
- Bad-Keyboard App
- A new battery display-type
- Scrolling view for long file names in browser
- Advanced and optimized level system. Read more above
- Folder handling for empty ones (Now indicate they are empty)

- Custom subghz presets
- Multiple NFC protocols
- Multiple Sub-Ghz protocols | Merged from Unleashed, thanks @xMasterX
- Subghz and IR signal replication via gpio | Credits to @xMasterX

- New API Routes for Locale settings
```
```txt
[Updated]

- All Assets

- Tons of apps
- File browser
- Massive compiler re-do
- About 4k files to speed things up a lot
- Applications to now use the new Locale setting
```
```txt
[Fixed]

- Keyboard issues on first char
- Passport crash on high level
- SFW / Dummy_mode getting you XP
- Leveling system
- Mood system
```
```txt
[REMOVED]

- Unused Dummy Mode
- Broken apps (bad apple, chess, etc.)
- Tons of unused code from FAPs and system calls
```

----
<br>
<h2 align="center">Install:</h2>
<br>

There are 3 methods to install Xtreme, we recommend you use the **Web Updater**, but choose whichever one you prefer:

<br>

> <details><summary><code>Web Updater (Chrome)</code></summary><ul>
>   <li>Open the <a href="https://github.com/ClaraCrazy/Flipper-Xtreme/releases/latest">latest release page</a> and click on the <code>Web Updater</code> link</li>
>   <li>Make sure qFlipper is closed</li>
>   <li>Click <code>Connect</code> and select your Flipper from the list</li>
>   <li>Click <code>Flash</code> and wait for the update to complete</li>
> </ul></details>

> <details><summary><code>qFlipper Package (.tgz)</code></summary><ul>
>   <li>Download the qFlipper package (.tgz) from the <a href="https://github.com/ClaraCrazy/Flipper-Xtreme/releases/latest">latest release page</a></li>
>   <li>Open <a href="https://flipperzero.one/update">qFlipper</a> and connect your Flipper</li>
>   <li>Click <code>Install from file</code></li>
>   <li>Select the .tgz you downloaded and wait for the update to complete</li>
> </ul></details>

> <details><summary><code>Zipped Archive (.zip)</code></summary><ul>
>   <li>Download the zipped archive (.zip) from the <a href="https://github.com/ClaraCrazy/Flipper-Xtreme/releases/latest">latest release page</a></li>
>   <li>Extract the archive. This is now your new Firmware folder</li>
>   <li>Open <a href="https://flipperzero.one/update">qFlipper</a>, head to <code>SD/Update</code> and simply move the firmware folder there</li>
>   <li>On the Flipper, hit the <code>Arrow Down</code> button, this will get you to the file menu. In there simply search for your updates folder</li>
>   <li>Inside that folder, select the Firmware you just moved onto it, and run the file thats simply called <code>Update</code></li>
> </ul></details>

<br>

----
<br>
<h2 align="center">Build it yourself:</h2>

> **Warning**
> We will not give basic support for compiling in our server. This is intended for people that already *know* what they are doing!

```bash
To download the needed tools:
$ git clone --recursive https://github.com/ClaraCrazy/Flipper-Xtreme.git
$ cd Flipper-Xtreme/

To flash directly to the Flipper (Needs to be connected via USB, qFlipper closed)
$ ./fbt flash_usb

To just compile firmware
$ ./fbt updater_package

If building FAPS:
$ ./fbt fap_dist

If building image assets:
$ ./fbt resources icons dolphin_ext
```

----
<h2 align="center">Stargazers over time</h2>

[![Stargazers over time](https://starchart.cc/ClaraCrazy/Flipper-Xtreme.svg)](https://starchart.cc/ClaraCrazy/Flipper-Xtreme)

----
<h2 align="center">Contributors</h2>

[![Contributors](https://user-images.githubusercontent.com/49810075/228231815-8f0a267d-ac1a-494c-9cd0-1cd57568fc79.svg)](https://github.com/ClaraCrazy/Flipper-Xtreme/graphs/contributors)


## ❤️ Support
If you like what you're seeing, **please consider donating to us**. We won't ever put this behind a paywall, but we'd still appreciate a few bucks!

- **[Patreon](https://patreon.com/CynthiaLabs)**: ❤️ Account needed, subscription with perks across my entire org.
- **[Wire-transfer](https://bunq.me/ClaraK)**: No account needed, one-time
- **[Paypal](https://paypal.me/RdX2020)**: Account needed, one-time
- **[ko-fi](https://ko-fi.com/cynthialabs)**: No account needed, one-time
- **Monero**: `41kyWeeoVdK4quzQ4M9ikVGs6tCQCLfdx8jLExTNsAu2SF1QAyDqRdjfGM6EL8L9NpXwt89HJeAoGf1aoArk7nDr4AMMV4T`

**Thanks for all your support <3**

----
<p align="center"> "What we do for ourselves dies with us. What we do for others and the world remains and is immortal.” ― Albert Pine </p>
