source "$HOME/.config/sketchybar/icons.sh"

PERCENTAGE=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)
CHARGING=$(pmset -g batt | grep 'AC Power')

if [ $PERCENTAGE = "" ]; then
  exit 0
fi

case ${PERCENTAGE} in
  [8-9][0-9]|100) ICON="$BATTERY_100_ICON" ;;
  [5-7][0-9]) ICON="$BATTERY_67_ICON" ;;
  [2-4][0-9]) ICON="$BATTERY_33_ICON" ;;
  [0-9]|1[0-9]) ICON="$BATTERY_0_ICON" ;;
  *) ICON="$BATTERY_BOLT_ICON"
esac

if [[ $CHARGING != "" ]]; then
  ICON="$BATTERY_BOLT_ICON"
fi

sketchybar --set $NAME icon="$ICON" label="${PERCENTAGE}%"
