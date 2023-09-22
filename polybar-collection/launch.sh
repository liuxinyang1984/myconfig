#!/usr/bin/env bash

THEME="murz"
CONFIG_DIR=$(dirname $0)/themes/$THEME/config.ini

killall polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    echo MONITOR=$m polybar main -c $CONFIG_DIR &
    MONITOR=$m polybar main -c $CONFIG_DIR &
  done
else
    echo polybar main -c $CONFIG_DIR &
    polybar main -c $CONFIG_DIR &
fi
    polybar main -c $CONFIG_DIR &


