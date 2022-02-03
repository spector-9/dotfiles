#!/bin/sh
[ ! -e "$HOME/vimwiki/Unogranised Notes.md" ] && mkdir $HOME/vimwiki/ &&  touch 'Unogranised Notes.md' && notify-send "File Created."
noteFilename="$HOME/vimwiki/Unogranised Notes.md"

nvim -c "norm Go" -c "norm Go# $(date +%F' '%H":"%M)" -c "norm o" \
  -c "norm zz"   "$noteFilename"
