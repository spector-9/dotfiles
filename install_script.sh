#!/bin/sh

# A script to install all the packages (For Arch/Arch-based distros)
if [ "$1" = "install" ] ; then
    sudo pacman -Syu 
    sudo pacman -S $(<$(pwd)/extras/package)
    cd /tmp
    git clone https://aur.archlinux.org/paru.git
    cd paru
    makepkg -si
fi


# enabling service
if [ "$1" = "service" ] ; then
    sudo systemctl enable NetworkManager.service
fi

# Sym-linking dot-files
if [ "$1" = "link" ] ; then
    stow -v $(ls -A -I "README.md" -I "extras" -I ".git*" -I "install_script.sh")
fi

[ "$1" = "copy" ] && printf "Copying extra files.\n" && sudo cp -rvi $(pwd)/extras/etc/* /etc/ 

[ $# -lt 1 ] && printf "Basic options:\ninstall - Install the necessary applications
service - Enables the required services.
copy - Copies the env var file and xorg keyboard, touchpad and monitor configs.
link - Sets up the dotfiles by linking them.\n"
