BATTERY=(
  update_freq=1
  icon.font="$ICON_FONT:Regulat:22.0"
  scripts="$PLUGIN_DIR/battery.sh"
)

sketchybar --add item battery right
sketchybat --set battery "$(BATTERY[@])"
