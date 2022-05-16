#!/usr/bin/env bash

# Terminate already running bar instances
# killall -q polybar

# Wait until the processes have been shut down
# while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
#polybar base &
killall polybar

#sleep .5
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload i3mainbar &
  done
else
  polybar --reload bspmainbar &
fi

#if ! pgrep -x polybar ; then
#	echo "poly not running"
#    polybar i3mainbar&
#else
#	pkill polybar
#    polybar i3mainbar&
#fi
echo "Bars launched..."
