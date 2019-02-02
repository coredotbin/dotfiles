# .dotfiles
My configurations for Sway WM on Arch

![Screenshot](/screenshot.png?raw=true)

This is my first rice, and still a work in progress. Do not expect that these configuration files will work for your set up.

Host: ThinkPad T470<br />
CPU: Intel i7-7500U

OS: Arch Linux<br />
WM: [sway-git](https://aur.archlinux.org/packages/sway-git/)<br />
Bar: [waybar-git](https://aur.archlinux.org/packages/waybar-git)<br />
Colors: [pywal](https://github.com/dylanaraps/pywal) bases colors on the wallpaper<br />
Shell: [Kitty](https://github.com/kovidgoyal/kitty)<br />
Font: [FiraCode](https://github.com/tonsky/FiraCode) 

## Features
Interesting configurations and scripts you may find useful.

### Drop-in wallpaper
I just replace the file in `.config/wallpaper/` when I want to change it. This is done just by telling Sway to use any file in a certain directory:

```
set $wallpaper ~/.config/wallpaper/*
output * bg $wallpaper fill
```

## Wallpaper
The wallpaper is a photo of Little River in Tennessee that I took during my spring break last year.

![Wallpaper](/.config/wallpaper/DSC_0140_edit.jpg?raw=true)
