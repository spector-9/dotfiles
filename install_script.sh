#!/bin/sh

# A script to install all the packages (For Arch/Arch-based distros)
if [ $1 = "install" ] ; then
    sudo pacman -Syu 
    sudo pacman -S bspwm sxhkd polybar picom stalonetray dunst nitrogen alacritty network-manager-applet blueman rofi maim pulseaudio pasystray nm-connection-editor \
    thunar xfce4-power-manager yay lxappearance parcellite xclip zathura neovim udiskie zsh stow
fi


# enabling service
if [ $1 = "service" ] ; then
    sudo systemctl enable NetworkManager.service
fi

# Sym-linking dot-files
if [ $1 = "link" ] ; then
    stow -v $(ls -a -I "README.md" -I "keyboard and mouse config" -I ".git*" -I "install_script.sh" -I ".." -I ".")
fi

