PERCENT=$(osascript -e 'output volume of (get volume settings)')

sketchybar --set $NAME label=$PERCENT"%" 
