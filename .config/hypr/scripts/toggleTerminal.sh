#!/bin/bash

TERMINAL_TITLE="MyPopTerm"
TERMINAL_CMD="foot --title=$TERMINAL_TITLE"

# 查找窗口
window=$(hyprctl clients -j | jq -r ".[] | select(.title == \"$TERMINAL_TITLE\") | .address")

if [ -n "$window" ]; then
    # 已存在：调整大小和位置
    #hyprctl dispatch resizewindowpixel exact 1100 240,address:$window
    #hyprctl dispatch movewindow mon:DVI-D-1,address:$window
    #hyprctl dispatch resizewindowpixel exact 1200 240,address:$window
    hyprctl dispatch movewindowpixel exact "1970 -390",address:$window   # DVI-D-1 的X偏移
    hyprctl dispatch focuswindow address:$window
else
    # 新建：指定显示器 + 浮动 + 固定大小位置
    hyprctl dispatch exec "$TERMINAL_CMD"
fi

