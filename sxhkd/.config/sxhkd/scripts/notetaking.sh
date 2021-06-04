#!/bin/sh
[ ! -e "$HOME/vimwiki/Unogranised Notes.md" ] && mkdir $HOME/vimwiki/ &&  touch 'Unogranised Notes.md' && notify-send "File Created."
noteFilename="$HOME/vimwiki/Unogranised Notes.md"

nvim -c "norm Go [$(date +%F' '%H":"%M)]($(date +%F' '%H":"%M))" \
  -c "norm zz"   "$noteFilename"

