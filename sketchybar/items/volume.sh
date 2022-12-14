sketchybar --add item volume right               \
    --set volume script="$PLUGIN_DIR/volume.sh"  \
    updates=on                                   \
    icon.background.drawing=on                   \
    icon.background.color=$GREEN                 \
    icon.background.height=12                    \
    icon.background.corner_radius=8              \
    icon.width=0                                 \
    background.padding_right=10                  \
    icon.align=left                              \
    label.drawing=off                            \
    background.drawing=on                        \
    background.color=0x50eeffff                  \
    background.height=12                         \
    background.corner_radius=8                   \
    align=left                                   \
    --subscribe volume volume_change             \
    width=50                                     \
    click_script="$PLUGIN_DIR/volume_click.sh"   \

    

sketchybar --add alias "Control Center,Sound" right \
           --set "Control Center,Sound" alias.color=0xffeeffff

sketchybar --add bracket volume_slider volume                 \
                                       "Control Center,Sound" \
           --set volume_slider background.color=0x33eeffff    \
                               background.corner_radius=10    \
                               background.height=25
                            
