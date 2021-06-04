#! /bin/sh
while true; do
    name="$(grep \& .config/alacritty/alacritty.yml | sed "s/^ *//g" | cut -d: -f1 | fzf)"
    ([ ! "$name" = '' ] && sed -i "s/^colors:.*/colors: \*$name/g" "$HOME"/.config/alacritty/alacritty.yml) | exit 0
done
