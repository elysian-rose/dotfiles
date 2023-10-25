BATTERY=(
  update_freq=1
  script="$PLUGIN_DIR/battery.sh"
)

sketchybar --add item battery right
sketchybar --set battery "${BATTERY[@]}"
