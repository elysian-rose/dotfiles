WIFI=(
  script="$PLUGIN_DIR/wifi.sh"
  label.drawing=off
  update_freq=1
)

sketchybar --add item wifi right
sketchybar --set wifi "${WIFI[@]}"
sketchybar --subscribe wifi wifi_change
