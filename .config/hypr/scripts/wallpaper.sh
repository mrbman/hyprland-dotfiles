#!/bin/sh

folder="${HOME}/.config/hypr/wallpapers"
# folder="${HOME}/Pictures"
pic=$(ls $folder/* | shuf -n1)

# values for picture-options: ‘none’, ‘wallpaper’, ‘centered’, ‘scaled’, ‘stretched’, ‘zoom’, ‘spanned’
# hyprctl hyprpaper wallpaper eDP-1,"file://$pic"
#swaybg --output '*' --mode fill --image $pic & &>/dev/null

# swww img -t any --transition-speed 40 --transition-fps 90 $pic & &>/dev/null
swww img -t any --transition-fps 90 $pic & &>/dev/null
sleep 1
