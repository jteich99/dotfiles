# jteich99 RICE

## Dependencies
- Alacritty
    - shell 
    - 
        - set `zsh` as your shell
- Rofi config
    - Papirus (`papirus-icon-theme` on `apt` or `dnf`)

## stow
Packages configs are installed via stow. To install a new package you have to run:
```shell
stow -t ~/ <package-name>
```

## to-do
- [ ] implement touchpad touches
- [x] automate changing to us-international keyboard layout on login
