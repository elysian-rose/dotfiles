SEPERATOR_CLICK_SCRIPT='yabai -m space --create; sketchybar --update'

SEPERATOR=(
  icon=$SEPERATOR_ICON
  label.drawing=off
  background.drawing=off
  click_script=$SEPERATOR_CLICK_SCRIPT
)

sketchybar --add item seperator left
sketchybar --set seperator "${SEPERATOR[@]}"
