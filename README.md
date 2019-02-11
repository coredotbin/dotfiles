# .dotfiles
My configurations for Sway WM on Arch

![Screenshot](screenshot.png?raw=true)

This is my first rice, and still a work in progress. Please do not expect that these configuration files will work for your set up. Enjoy!

## Details
**Host**: ThinkPad T470
* Intel i7-7500U
* Intel HD Graphics 620 with 512 MB allocated
* 14" FHD IPS display
* 2x 4 GB DDR4 2133MHz
* 256 GB NVMe SSD
* Bluetooth 4.1

**OS**: [Arch Linux x86_64](https://www.archlinux.org/)<br />
**WM**: [Sway](https://swaywm.org/) ([sway-git](https://aur.archlinux.org/packages/sway-git/)<sup>AUR</sup>)<br />
**Bar**: [Waybar](https://github.com/alexays/waybar) ([waybar-git](https://aur.archlinux.org/packages/waybar-git)<sup>AUR</sup>)<br />
**Launcher**: [rofi](https://github.com/DaveDavenport/rofi)<br />
**Colors**: [pywal](https://github.com/dylanaraps/pywal) generates a color scheme based on the [wallpaper](#setwallpaper-script)!<br />
**Terminal**: [Kitty](https://sw.kovidgoyal.net/kitty/) - OpenGL GPU rendering <br />
**Shell**: [zsh](http://zsh.sourceforge.net/)<br />
**Font**: [FiraCode](https://github.com/tonsky/FiraCode) 10.0<br />
**Icons**: [FontAwesome](https://fontawesome.com/) ([otf-font-awesome](https://www.archlinux.org/packages/community/any/otf-font-awesome/))<br />
**Lockscreen**: [swaylock](https://github.com/swaywm/swaylock) with cjbassi's [swaylock-blur](https://github.com/cjbassi/swaylock-blur) script

## Features
Interesting configuration snippets and scripts you may find useful.

### setwallpaper script
Run `~/.scripts/setwallpaper path/to/new/wallpaper` to set your wallpaper.

```
~/.scripts/setwallpaper
```
```
#!/bin/bash
[ -z "$1" ] && exit
convert "$1" ~/.config/wallpaper.png
wal -i ~/.config/wallpaper.png
pkill waybar
~/.scripts/startwaybar.sh </dev/null &>/dev/null &
```

My wallpaper can be found [here](https://www.deviantart.com/mikkolagerstedt/art/Vision-393388053).

### Waybar modules
#### Spotify
The Waybar Spotify module ships with Waybar! You can find SibrenVasse's [mediaplayer.py script](https://github.com/Alexays/Waybar/blob/master/resources/custom_modules/mediaplayer.py) on the Waybar repository.

#### Brightness 
Using [brightnessctl](https://github.com/Hummer12007/brightnessctl) to get the backlight brightness:

```json
"custom/brightness": {
	"exec": "/usr/bin/brightnessctl --machine-readable | grep -o -E '([0-9]+%)'",
	"interval": 1,
	"format": "{} "
} 
```

#### Drive capacity
```
~/.config/waybar/config-bottom
```
```json
"custom/drive": {
        "exec": "$HOME/.config/waybar/drive-nvme0n1p2.sh",
        "interval": 600,
        "format": "{} "
}
```
<br />

```
~/.config/waybar/drive-root.sh
```
```bash
#! /bin/bash
/usr/bin/df -h / | grep "/" | awk '{print $3"/"$2}'
```

## Installation
I use [StreakyCobra's method](https://news.ycombinator.com/item?id=11071754) for dotfile storage, and a good tutorial can be found [here](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo).
