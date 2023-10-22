SOUND=(
  update_freq=1
  script="$PLUGIN_DIR/volume.sh"
)

sketchybar --add item sound right
sketchybar --set sound "${SOUND[@]}"
