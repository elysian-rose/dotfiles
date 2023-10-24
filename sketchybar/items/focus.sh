FOCUS=(
  icon.drawing=off  
  background.drawing=off
  script="$PLUGIN_DIR/focus.sh"
)

sketchybar --add item focus left
sketchybar --set focus "${FOCUS[@]}"
sketchybar --subscribe focus front_app_switched
