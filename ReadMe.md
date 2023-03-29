<pre>
<h1 id="top" align="center">CoolOS (firmware) for Flipper Zero</h1>
<h2 align="center">Forked from <a href="https://github.com/ClaraCrazy/Flipper-Xtreme">XFW by ClaraCrazy</a></h2>

<p align="center">
  > About ........................................................ [<a href="#001">001</a>]<br>
  > Building ..................................................... [<a href="#002">002</a>]<br>
  > Installing ................................................... [<a href="#003">003</a>]<br>
  > Credits ...................................................... [<a href="#004">004</a>]
</p>

<br>

<h2 id="001" align="center">About</h2>
<p align="center">
               CoolOS is a simple fork of <a href="https://github.com/ClaraCrazy/Flipper-Xtreme">ClaraCrazy's Xtreme Firmware (XFW)</a> with minimal changes to
               the included apps and files. This is a strictly zero-effort project which exists just
               to make using my Flipper more enjoyable. I provide NO guarantee that this firmware is
               stable and/or usable and if you choose to use this firmware I am in no way liable for
               any loss of time incurred by installing one that works better.
               
               
               The main differences between this and XFW are that I have removed any apps/files that
               I find useless, and added ones that I find useful. Additionally I have made changes
               to the directory structure on the SD Card because I didn't really like how it was
               before.
               
               
               One other major change I made is many included apps are now submodules which makes it
               much easier to update them to the latest version. The downside of this is that there
               is no guarantee that they will work, and while I will make changes wherever possible
               to fix these issues, keep in mind that updating submodules could break stuff.
               
               
               This repository will be synced with XFW whenever it is updated and I will try to make
               it usable as fast as possible, however it is important to note that I am doing this
               for myself and will take as long as I like as well as potentially removing features
               that are causing issues instead of fixing them.
               
               
               Below is an incomplete list of changes from XFW:
               
               todo
</p>

<h2 id="002" align="center">Building</h2>
<p align="center">
    As I doubt anyone other than me will be using this, I will not provide precompiled 
    binaries for download and if you wish to use this firmware you will have to compile
    it yourself.
               
               
    Building will need to be done on Linux as I have removed some of the Mac/Windows
    build tools since they were useless to me. It should be easy to download the missing
    tools from XFW but I will not provide instructions to use them so be warned.
               
               
    Building should be as easy as executing
    <code>./fbt COMPACT=1 DEBUG=0 fap_dist</code>
    to build the apps and
    <code>./fbt COMPACT=1 DEBUG=0 updater_package</code>
    to build the firmware.
               
               
    If you want the apps to be installed alongside the firmware, simply move the folders
    in dist/f7-C/apps into the applications_user folder. After this compile the firmware
    normally and the apps will install themseleves to the SD Card along with the rest of
    the firmware.
               
               
    It should be noted that I have included the video file for Bad Apple in the firmware
    so it can be played by the Video Player, however the file is (relatively) quite big
    and will slow down compilation and make the installation take longer as well. If you
    want to remove the file, simply delete bad_apple.bnd from
    assets/resources/apps_data/video_player.
</p>

<h2 id="003" align="center">Installing</h2>
todo

<h2 id="004" align="center">Credits</h2>
todo
