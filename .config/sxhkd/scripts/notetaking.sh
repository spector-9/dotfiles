#!/bin/sh

noteFilename="$HOME/vimwiki/Unogranised Notes.md"

nvim -c "norm Go [$(date +%F' '%H":"%M)]($(date +%F' '%H":"%M))" \
  -c "norm zz"   "$noteFilename"

