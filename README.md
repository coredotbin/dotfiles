# .dotfiles
My configurations for Sway WM on Arch

![workflow](screenshots/workflow.png?raw=true)

This is my first rice, and still a work in progress. Please do not expect that these configuration files will work for your set up. Enjoy!

## Details

![neofetch](screenshots/neofetch.png?raw=true)

**Host**: ThinkPad T470
* Intel i7-7500U
* Intel HD Graphics 620 512 MB
* 14" FHD IPS display
* 2x 4 GB DDR4 2133MHz
* 256 GB NVMe SSD
* Bluetooth 4.1

**OS**: [Arch Linux x86_64](https://www.archlinux.org/)<br />
**WM**: [Sway](https://swaywm.org/) ([sway-git](https://aur.archlinux.org/packages/sway-git/)<sup>AUR</sup>)<br />
**Bar**: [Waybar](https://github.com/alexays/waybar) ([waybar-git](https://aur.archlinux.org/packages/waybar-git)<sup>AUR</sup>)<br />
**Launcher**: [rofi](https://github.com/DaveDavenport/rofi)<br />
**Colors**: [pywal](https://github.com/dylanaraps/pywal) generates a color scheme based on the [wallpaper](#setwallpaper-script)!<br />
**Wallpaper** can be found [here](https://www.deviantart.com/mikkolagerstedt/art/Vision-393388053)<br />
**Terminal**: [Kitty](https://sw.kovidgoyal.net/kitty/) - OpenGL GPU rendering <br />
**Shell**: [zsh](http://zsh.sourceforge.net/)<br />
**Font**: [FiraCode](https://github.com/tonsky/FiraCode) 10.0<br />
**Icons**: [FontAwesome](https://fontawesome.com/) ([otf-font-awesome](https://www.archlinux.org/packages/community/any/otf-font-awesome/))<br />
**Lockscreen**: [swaylock](https://github.com/swaywm/swaylock) with cjbassi's [swaylock-blur](https://github.com/cjbassi/swaylock-blur) script<br />
**Notifications**: [mako](https://wayland.emersion.fr/mako)

## Features
Interesting configuration snippets and scripts you may find useful.

### Screenshots
Taking screenshots using emersion's [grim](https://wayland.emersion.fr/grim/) and [slurp](https://wayland.emersion.fr/slurp/) tools.

```
# Capture the focused output
bindsym Control+Print exec name=screenshot_$(date "+%Y-%m-%d_%H-%M-%S" | cut -c 1-19).png && \
	grim -o $(swaymsg -t get_outputs | jq -r '.[] | select(.focused) | .name') \
		$(xdg-user-dir PICTURES)/screenshots/$name && \
	notify-send -i $(xdg-user-dir PICTURES)/screenshots/$name "Screenshot captured" $name
# Capture a region
bindsym Print exec name=screenshot_$(date "+%Y-%m-%d_%H-%M-%S" | cut -c 1-19).png && \
	grim -g "$(slurp)" $(xdg-user-dir PICTURES)/screenshots/$name && \
	notify-send -i $(xdg-user-dir PICTURES)/screenshots/$name "Screenshot captured" $name
```

### setwallpaper script
Usage: `./setwallpaper /path/to/new/wallpaper`

```
#!/bin/bash
[ -z "$1" ] && exit
convert "$1" ~/.config/wallpaper.png
wal -i ~/.config/wallpaper.png
pkill waybar 
~/.scripts/startwaybar.sh </dev/null &>/dev/null &
```

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
```json
"custom/drive": {
        "exec": "$HOME/.scripts/drive-root.sh",
        "interval": 600,
        "format": "{} "
}
```
<br />

```bash
#! /bin/bash
/usr/bin/df -h / | grep "/" | awk '{print $3"/"$2}'
```

## Installation
I use [StreakyCobra's method](https://news.ycombinator.com/item?id=11071754) for dotfile backup and storage. A good tutorial can be found [here](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo).
