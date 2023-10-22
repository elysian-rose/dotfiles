source "$HOME/.config/sketchybar/icons.sh"

VOLUME=$(osascript -e "output volume of (get volume settings)")
MUTED=$(osascript -e "output muted of (get volume settings)")

if [[ $MUTED != "false" ]]; then
  ICON="$SOUND_MUT_ICON"
  VOLUME=0
else
  case $VOLUME in
    100) ICON=$SOUND_FUL_ICON ;;
    [6-9][0-9]) ICON="$SOUND_HIG_ICON" ;;
    [3-5][0-9]) ICON="$SOUND_MID_ICON" ;;
    [1-2][0-9]|[1-9]) ICON="$SOUND_LOW_ICON" ;;
    *) ICON="$SOUND_MUT_ICON"
  esac
fi

sketchybar --set $NAME icon="$ICON" label="$VOLUME%"
