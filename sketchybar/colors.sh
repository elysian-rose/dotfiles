source ~/.cache/wal/colors.sh

PRE="0xFF"
export TEXT_COLOR="$PRE$(echo $color3 | cut -d "#" -f 2)"
export ALT_TEXT_COLOR="$PRE$(echo $color1 | cut -d "#" -f 2)"

export BG_COLOR="0xCC000000"
