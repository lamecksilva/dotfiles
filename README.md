# Dotfiles

My dotfiles configs, useful scripts and Neovim setup

## Installation

To install the dotfiles, just run the install script with

`./script.sh`

> if needed change the location of files locations,
> fix the script for you and your system

### Useful Bug fixes

#### Compose key in Cinnamon

To see available compose key options in X11 Cinnamon:

`$ grep -E "compose:" /usr/share/X11/xkb/rules/base.lst`

And to set manually without GUI (i use menu key in this example):

`$ dconf write /org/cinnamon/desktop/input-sources/xkb-options "['compose:menu']"`
