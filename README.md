# .dotfiles
My configurations for Sway WM on Arch

![theme 3](https://i.imgur.com/yFQJnAn.png)

These are my dotfiles. Feel free to take a look around, but they are constantly changing, and I cannot guarantee anything will work on your system! Have fun!

## Details

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
**Terminal**: [Kitty](https://sw.kovidgoyal.net/kitty/) - OpenGL GPU rendering <br />
**Shell**: [zsh](http://zsh.sourceforge.net/)<br />
**Font**: [FiraCode](https://github.com/tonsky/FiraCode) 10.0<br />
**Icons**: [FontAwesome](https://fontawesome.com/) ([otf-font-awesome](https://www.archlinux.org/packages/community/any/otf-font-awesome/))<br />
**Lockscreen**: [swaylock](https://github.com/swaywm/swaylock) with cjbassi's [swaylock-blur](https://github.com/cjbassi/swaylock-blur) script<br />
**Notifications**: [mako](https://wayland.emersion.fr/mako)

## More screenshots
![theme 2](https://i.imgur.com/rCZqVUo.png)

![theme 1](https://i.imgur.com/KQUfYnb.png)

## Setup

```sh
$ git clone --bare https://github.com/coredotbin/dotfiles .dotfiles
$ echo "alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> .bashrc
$ dots checkout
```
