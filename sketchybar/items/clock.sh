source $HOME/.config/sketchybar/icons.sh

sketchybar --add item clock right              \
    --set clock update_freq=1                  \
                script="$PLUGIN_DIR/clock.sh"  \
                label.padding_left=10          \
                icon="$DIVIDER"                \
                icon.padding_left=11           \
