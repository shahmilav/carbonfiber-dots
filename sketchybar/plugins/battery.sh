#!/usr/bin/env sh

PERCENTAGE=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)
CHARGING=$(pmset -g batt | grep 'AC Power')

if [ $PERCENTAGE = "" ]; then
  exit 0
fi

case ${PERCENTAGE} in
  9[0-9]|100) ICON="$BATTERY_100"  # 90%-100%
  ;;
  [6-8][0-9]) ICON="$BATTERY_75"  # 60%-89%
  ;;
  [3-5][0-9]) ICON="$BATTERY_50"  # 30%-59%
  ;;
  [1-2][0-9]) ICON="$BATTERY_25"  # 10%-29%
  ;;
  *) ICON="$BATTERY_10"           # < 10%
esac

if [[ $CHARGING != "" ]]; then
  ICON="$BATTERY_CHARGING"
fi

sketchybar --set $NAME icon="$ICON" label="${PERCENTAGE}%"
