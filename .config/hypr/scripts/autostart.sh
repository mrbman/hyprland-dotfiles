#!/bin/sh

sleep 1

if [[ ! `pidof swww` ]]; then
        swww init &
        sleep 1
fi

swww img $HOME/.config/hypr/wallpapers/color_life.png &

# Etc
sleep 1
/usr/lib/xdg-desktop-portal-hyprland &
sleep 2
/usr/lib/xdg-desktop-portal &
xdg-user-dirs-update
# fcitx5 &
