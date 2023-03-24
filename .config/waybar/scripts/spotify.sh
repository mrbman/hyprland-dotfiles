#!/bin/sh

class=$(playerctl metadata --player=spotify_player --format '{{lc(status)}}')
icon="  "

if [[ $class == "playing" ]]; then
  info=$(playerctl metadata --player=spotify_player --format '{{artist}} - {{title}}')
#  if [[ ${#info} > 20 ]]; then
#    info=$(echo $info | cut -c1-20)"..."
#  fi
  info=$(echo $info | cut -c1-50)
  text=$icon"  "$info
elif [[ $class == "paused" ]]; then
  text=$icon"  "paused
elif [[ $class == "stopped" ]]; then
  text=""
fi

echo -e "{\"text\":\""$text"\", \"class\":\""$class"\"}"

