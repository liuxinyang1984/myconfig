#!/bin/bash
# 获取当前焦点窗口的浮动状态（1=浮动，0=平铺）
is_floating=$(hyprctl activewindow -j | jq '.floating')

# 根据状态切换焦点
if [[ $is_floating == true ]]; then
  hyprctl dispatch focuswindow tiled
else
  hyprctl dispatch focuswindow floating
fi
