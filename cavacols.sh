#!/bin/bash
wal_colors=( $(cat ~/.cache/wal/colors | head -n 16) )

sed -i "s/background = .*/background = ${wal_colors[0]}/" ~/.config/cava/config
sed -i "s/foreground = .*/foreground = ${wal_colors[7]}/" ~/.config/cava/config
sed -i "s/gradient_color_1 = .*/gradient_color_1 = '${wal_colors[14]}'/" ~/.config/cava/config
sed -i "s/gradient_color_2 = .*/gradient_color_2 = '${wal_colors[15]}'/" ~/.config/cava/config

cava
