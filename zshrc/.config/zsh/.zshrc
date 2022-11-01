setopt  auto_cd  

# Auto Pushd
DIRSTACKSIZE=10
#setopt autopushd
#setopt pushdignoredups

# CD Path
cdpath=($HOME/Media)

# Path Variable
export PATH="/home/$USER/wx/wxWidgets-3.1.3/lib/gtk3_so/bin:$HOME/.local/bin:$HOME/.cargo/bin:$PATH"

# Aliases
alias yt='ytfzf --subt'
alias update='sudo pacman -Syu'
alias inst='sudo pacman -S'
alias remove='sudo pacman -Rcns'
alias search='pacman -Ss'
alias ls='ls --color=auto'
#alias ls='exa --icons'
alias rm='rm -I'
alias vim='nvim'
alias vi='nvim'
alias v='nvim'
alias ll='ls -alh --color=auto'
#alias ll='exa -laF  --git --icons'
alias mv="mv -iv"
alias mkdir="mkdir -vp"
alias cp="cp -rvi"
alias d='cdr -l'
alias 0='cdr 0'
alias 1='cdr 1'
alias 2='cdr 2'
alias 3='cdr 3'
alias 4='cdr 4'
alias 5='cdr 5'
alias 6='cdr 6'
alias 7='cdr 7'
alias 8='cdr 8'
alias 9='cdr 9'
alias 9='cdr 10'
alias tb='taskbook'
alias o='xdg-open'

downvid() {
    quality="$1"
    shift
    for i in "$@"; do
        yt-dlp --embed-thumbnail --embed-subs --sub-lang en --write-auto-sub -f "bestvideo[height<=$quality]+bestaudio/best[height<=$quality]" "$i"
    done
}

# Set up the prompt
autoload -Uz promptinit
promptinit
prompt adam1
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs
setopt histignorealldups sharehistory

# Use emacs(-e) or vi(-v) keybindings 
bindkey -v
bindkey "^R" history-beginning-search-backward
bindkey "^F" history-beginning-search-forward
#bindkey "^R" history-incremental-search-backward

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.config/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit
zstyle ':completion:*:*:cdr:*:*' menu selection
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
#test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

source ~/.config/zsh-configs/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.config/zsh-configs/.p10k.zsh ]] || source ~/.config/zsh-configs/.p10k.zsh
source ~/.config/zsh-configs/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Art
#echo '
#                   ,.ood888888888888boo., 
#              .od888P^""            ""^Y888bo. 
#          .od8P``   ..oood88888888booo.    ``Y8bo. 
#       .odP`"  .ood8888888888888888888888boo.  "`Ybo. 
#     .d8`   od8`d888888888f`8888`t888888888b`8bo   `Yb. 
#    d8`  od8^   8888888888[  ``  ]8888888888   ^8bo  `8b 
#  .8P  d88`     8888888888P      Y8888888888     `88b  Y8. 
# d8` .d8`       `Y88888888`      `88888888P`       `8b. `8b 
#.8P .88P            """"            """"            Y88. Y8. 
#88  888                                              888  88 
#88  888                                              888  88 
#88  888.        ..                        ..        .888  88 
#`8b `88b,     d8888b.od8bo.      .od8bo.d8888b     ,d88` d8` 
# Y8. `Y88.    8888888888888b    d8888888888888    .88P` .8P 
#  `8b  Y88b.  `88888888888888  88888888888888`  .d88P  d8` 
#    Y8.  ^Y88bod8888888888888..8888888888888bod88P^  .8P 
#     `Y8.   ^Y888888888888888LS888888888888888P^   .8P` 
#       `^Yb.,  `^^Y8888888888888888888888P^^`  ,.dP^` 
#          `^Y8b..   ``^^^Y88888888P^^^`    ..d8P^` 
#              `^Y888bo.,            ,.od888P^` 
#                   "`^^Y888888888888P^^`" '

echo '
=================     ===============     ===============   ========  ========
\\\ . . . . . . .\\\   //. . . . . . .\\\   //. . . . . . .\\\  \\\. . .\\\// . . //
||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\/ . . .||
|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||
||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||
|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\ . . . . ||
||. . ||   ||-"  || ||  `-||   || . .|| ||. . ||   ||-"  || ||  `|\_ . .|. .||
|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\ `-_/| . ||
||_-" ||  .|/    || ||    \|.  || `-_|| ||_-" ||  .|/    || ||   | \  / |-_.||
||    ||_-"      || ||      `-_||    || ||    ||_-"      || ||   | \  / |  `||
||    `"         || ||         `"    || ||    `"         || ||   | \  / |   ||
||            .===" `===.         .===".`===.         .===" /==. |  \/  |   ||
||         .=="   \_|-_ `===. .==="   _|_   `===. .===" _-|/   `==  \/  |   ||
||      .=="    _-"    `-_  `="    _-"   `-_    `="  _-"   `-_  /|  \/  |   ||
||   .=="    _-"          "-__\._-"         "-_./__-"         `" |. /|  |   ||
||.=="    _-"                                                     `" |  /==.||
=="    _-"                                                            \/   `==
\   _-"                                                                `-_   /
 `""                                                                      ``" '

# fortune theo

# cat $HOME/agenda.md
