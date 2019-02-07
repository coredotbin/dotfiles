# .dotfiles
My configurations for Sway WM on Arch

![Screenshot](/screenshot.png?raw=true)
CC-BY-SA-4.0

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
**Colors**: [pywal](https://github.com/dylanaraps/pywal) generates a color scheme based on the [wallpaper](#drop-in-wallpaper)!<br />
**Terminal**: [Kitty](https://sw.kovidgoyal.net/kitty/) - OpenGL GPU rendering <br />
**Shell**: [zsh](http://zsh.sourceforge.net/)<br />
**Font**: [FiraCode](https://github.com/tonsky/FiraCode) 10.0<br />
**Icons**: [FontAwesome](https://fontawesome.com/) ([otf-font-awesome](https://www.archlinux.org/packages/community/any/otf-font-awesome/))
**Lockscreen**: [swaylock](https://github.com/swaywm/swaylock) with cjbassi's [swaylock-blur](https://github.com/cjbassi/swaylock-blur) script
**Other**: cmatrix, gotop, neofetch

## Features
Interesting configurations and scripts you may find useful.

### Drop-in wallpaper
Replace the file in `.config/wallpaper/` to change your wallpaper. This configuration tells Sway to use any file in this directory:

```
set $wallpaper ~/.config/wallpaper/*
output * bg $wallpaper fill
```

Reload your Sway configuration (default is `$meta+Shift+c`) to update the wallpaper. After replacing the image file, regenerate your pywal color scheme:

```
$ wal -i ~/.config/wallpaper/*
```

### Waybar modules
#### Spotify
The Waybar Spotify module ships default with Waybar! You can find SibrenVasse's [mediaplayer.py script on the Waybar repository](https://github.com/Alexays/Waybar/blob/master/resources/custom_modules/mediaplayer.py).

#### Brightness 
Using [brightnessctl](https://github.com/Hummer12007/brightnessctl) to get the backlight brightness:

```
"custom/brightness": {
	"exec": "/usr/bin/brightnessctl --machine-readable | grep -o -E '([0-9]+%)'",
	"interval": 1,
	"format": "{} "
} 
```

#### Drive capacity
```
"custom/drive": {
        "exec": "$HOME/.config/waybar/drive-nvme0n1p2.sh",
        "interval": 600,
        "format": "{} "
}
```

```
#! /bin/bash
/usr/bin/df -h | grep nvme0n1p2 | awk '{print $3"/"$2}'
```

## Wallpaper
The wallpaper is a photo of Little River in Tennessee that I took during my spring holiday in 2018.

![Wallpaper](/.config/wallpaper/DSC_0140_edit.jpg?raw=true)
CC-BY-SA-4.0

## Install these dotfiles
I use [StreakyCobra's method](https://news.ycombinator.com/item?id=11071754) for dotfile storage, and a good tutorial can be found [here](https://developer.atlassiancom/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo).

* Generate wal color scheme:<br />
`$ wal -i ~/.config/wallpaper/*`
* Symlink wal GTK theme:<br />
`$ ln -s ~/.themes/oomox-wal /usr/share/themes/oomox-wal`
