#!/usr/bin/env sh

SPACE_ICONS=("1" "2" "3" "4" "5" "6" "7" "8" "9" "10" "11" "12" "13" "14" "15")

SPACE=(
  icon.padding_left=22
  icon.padding_right=22
  label.padding_right=33
  icon.color=$TEXT_COLOR
  icon.font="$FONT:Bold:13.0"
  icon.highlight_color=$ALT_TEXT_COLOR
  background.drawing=off
  background.padding_left=-8
  background.padding_right=-8
  label.drawing=off
  script="$PLUGIN_DIR/spaces.sh"
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
