#!/bin/bash

# Pacman packages
sudo pacman -S --noconfirm rsync gvim git firefox networkmanager network-manager-applet i3-wm i3lock i3status feh pasystray acpilight playerctl rsync noto-fonts flameshot dmenu pavucontrol blueman bluez rxvt-unicode

# Copying over config files
rsync i3/config ~/.config/i3/
rsync i3status/config ~/.config/i3status/
rsync ../shared/vim/vimrc ~/.vimrc
rsync ../shared/wallpapers/* ~/.config/i3/wall/
rsync ../shared/bashrc/bashrc ~/.bashrc
rsync X11/xinitrc ~/.xinitrc
rsync X11/Xresources ~/.Xresources

# Yay install
cd
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/yay.git && cd yay && makepkg --noconfirm -si

# Yay packages
yay -S --noconfirm solaar vundle-git urxvt-resize-font-git

# Vundle plugin installs
vim +PluginInstall +qall
