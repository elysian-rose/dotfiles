#!/usr/bin/env sh

SPACE_ICONS=("1" "2" "3" "4" "5" "6" "7" "8" "9" "10" "11" "12" "13" "14" "15")

# Destroy space on right click, focus space on left click.
# New space by left clicking separator (>)
SPACE_CLICK_SCRIPT='[ "$BUTTON" = "right" ] && (yabai -m space --destroy $SID; sketchybar --trigger space_change) || yabai -m space --focus $SID 2>/dev/null'

SPACE=(
  icon.padding_left=20
  icon.padding_right=20
  icon.color=$MAGENTA
  icon.font="$FONT:Bold:13.0"
  icon.highlight_color=$RED
  background.padding_left=-8
  background.padding_right=-8
  background.drawing=off
  label.drawing=off
  script="$PLUGIN_DIR/spaces.sh"
  click_script="$SPACE_CLICK_SCRIPT"
)

sid=0
for i in "${!SPACE_ICONS[@]}"
do
  sid=$(($i+1))
  sketchybar --add space space.$sid left
  sketchybar --set space.$sid associated_space=$sid
  sketchybar --set space.$sid icon=${SPACE_ICONS[i]}
  sketchybar --set space.$sid "${SPACE[@]}"
done
