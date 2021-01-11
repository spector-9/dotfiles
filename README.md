# Dotfiles
    What are dotfiles?
    Basically they are text files that contain configuration for various softwares.
    Usually they are hidden due to the dot preceding the file name (therefore dotfiles).
    UNIX-like systems treat such files as hidden files.

## Some of the scripts are not made by me, like volume control however as they are open source you can use them however you want. That goes for my scripts too.

* These dotfiles are specifically customised for bspwm however I tried to keep them as universal as possible.

The directory structure might seem weird to people who haven't used GNU stow.

However its pretty easy to setup after fresh install that's why I switched to it.


**Here are steps to setup your system with these dotfiles.**
1. Git clone this repo
2. Install GNU stow (Use your system's package manager)
3. CD into cloned directory and then run the command 
    stow *
4. Sym-links will be created automatically.
5. Voilà! You are done.
