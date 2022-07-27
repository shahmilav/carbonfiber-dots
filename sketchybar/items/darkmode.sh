#!/bin/sh


if [[ $(defaults read -g AppleInterfaceStyle 2>/dev/null) == "Dark" ]]
then
    sketchybar -m --set appearance icon="􀆮"

else
    sketchybar -m --set appearance icon="􀆺"
fi

