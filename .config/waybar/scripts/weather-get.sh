#!/bin/sh

METRIC=1 #Should be 0 or 1; 0 for F, 1 for C
LOCATION="OCN|AU|VIC|MELBOURNE"
content=$(curl -s http://rss.accuweather.com/rss/liveweather_rss.asp\?metric\=${METRIC}\&locCode\=$LOCATION | perl -ne '
if (/Currently/) {chomp;/\<title\>Currently: (.*)?\<\/title\>/; print "$1"; }')

ICON=$(curl -s 'https://wttr.in/?format=1' | sed 's/[+0-9a-cA-Z°-]//g')

TEXT=$ICON""$content
#echo -e "$ICON""$content "

# echo '{"text": "'$TEMP'", "tooltip": "'$ICON $TOOLTIP $LOC'", "class": '$CLASS' }'

echo '{"text": "'$ICON $content'" }'

# echo -e '{"text": "'$ICON'", "'$content'" }'
