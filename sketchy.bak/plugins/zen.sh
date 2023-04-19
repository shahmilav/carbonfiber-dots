#!/bin/sh


zen_on() {
sketchybar  --set volume drawing=off        \
    --set volume_alias drawing=off  \
    --set battery drawing=off       \
    --set wifi.control drawing=off  \
    --set appearance drawing=off \
    --set cpu.top drawing=off \
    --set volume drawing=off        \
    --set volume_alias drawing=off  \
    --set battery drawing=off       \
    --set wifi.control drawing=off  \
    --set appearance drawing=off \
    --set cpu.percent drawing=off \
    --set cpu.sys drawing=off \
    --set cpu.user drawing=off
}

zen_off() {
sketchybar  --set volume drawing=on         \
    --set volume_alias drawing=on   \
    --set battery drawing=on        \
    --set wifi.control drawing=on   \
    --set appearance drawing=on  \
    --set cpu.top drawing=on  \
    --set volume drawing=on         \
    --set volume_alias drawing=on   \
    --set battery drawing=on        \
    --set wifi.control drawing=on   \
    --set appearance drawing=on  \
    --set cpu.percent drawing=on  \
    --set cpu.sys drawing=on  \
    --set cpu.user drawing=on 
}

