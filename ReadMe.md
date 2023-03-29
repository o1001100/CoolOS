# CoolOS for [Flipper Zero](https://flipperzero.one/)

Forked from [Flipper-Xtreme](https://github.com/ClaraCrazy/Flipper-Xtreme) with minimal changes to included apps and files

This is my personal firmware and you probably don't want to use it :)

## Installation

Build like any other firmware or use my build script:

`./compile`

and then install like any other firmware from the `dist/f7-C` directory

The script is written in bash and will **remove all files** in `applications_user` and `assets/resources/apps` as well as running `./fbt -c` before compiling apps and finally the update package

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

#### Resources

Resources in this fork are taken from:

[Flipper](https://github.com/UberGuidoZ/Flipper) by UberGuidoz (large dump of files for Flipper)

[Flipper-IRDB](https://github.com/Lucaslhm/Flipper-IRDB) by Lucaslhm [and many more](https://github.com/Lucaslhm/Flipper-IRDB#flipper-irdb) (massive database of IR files formatted for Flipper)
