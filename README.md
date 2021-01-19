# Dotfiles
    What are dotfiles?
    Basically they are text files that contain configuration for various softwares.
    Usually they are hidden due to the dot preceding the file name (therefore dotfiles).
    UNIX-like systems treat such files as hidden files.

## Some of the scripts are not made by me, like volume control however as they are open source you can use them however you want. That goes for my scripts too.

* These dotfiles are specifically customised for bspwm however I tried to keep them as universal as possible.

The directory structure might seem weird to people who haven't used GNU stow.
However its pretty easy to setup after fresh install that's why I switched to it. The installation script is made just for Arch for now. 
If you want to use it then just replace the pacman command with you system package manager.


**Here are steps to setup your system with these dotfiles.**

1. Git clone this repo
2. CD into cloned directory and run the command
```shell
chmod +x install_script.sh
```
3. Now to install required programs run this command 
```shell
./install_script.sh install
```
4. To enable services like network manager run
```shell
./install_script.sh service
```
5. Now to link all the dotfiles
```shell
./install_script.sh link
```
6. Voilà! You are done.

**Credits**
- [[https://github.com/adi1090x/polybar-themes]] Thanks to adi1090x, I am using a modified version of his polybar-1 config.

