# jteich99 RICE

## Dependencies
- Alacritty
    - shell 
        - set `zsh` as your shell
    - run `git submodule update` to add `alacritty-theme` repo
    - `oh-my-zsh`
        - install from [git repo](https://github.com/ohmyzsh/ohmyzsh)
- Rofi config
    - Papirus (`papirus-icon-theme` on `apt` or `dnf`)
    - `rofi-wifi-menu` for selecting wifi
        - [ ] pending: making clickable wifi section in polybar open it
        - download from [git repo](https://github.com/ericmurphyxyz/rofi-wifi-menu)
- i3
    - `maim` for taking screenshots
    - `xclip` for copying screenshots
    - `picom` - compositor
        - in Ubuntu > 20.10 it can be installed with `sudo apt-get install picom`, for previous version it has to be built from source
        - in Fedora it can be installed with `sudo dnf install picom`
        - it has it's own config file in `.config/picom/picom.conf`

## stow
Packages configs are installed via stow. To install a new package you have to run:
```shell
stow -t ~/ <package-name>
```

## to-do
- [ ] implement touchpad touches
- [x] automate changing to us-international keyboard layout on login
