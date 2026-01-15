#!/bin/bash
# 获取当前活动工作区
current_workspace=$(hyprctl workspaces | grep -oP 'workspace ID \d+ \(\d+\) on monitor' | head -n 1)

# 输出当前活动工作区
echo "当前活动工作区: '$current_workspace'"

# 获取当前布局信息
current_layout=$(hyprctl keyword general:layout)

# 输出当前布局信息
echo "当前布局: '$current_layout'"

# 如果当前布局为空，尝试从窗口信息中获取
if [ -z "$current_layout" ]; then
    echo "未能从布局中获取信息，尝试从窗口信息中获取"
    current_layout=$(hyprctl clients | grep -oP '(?<=layout: ).*' | head -n 1)
fi

# 检查是否获取到布局
if [ -z "$current_layout" ]; then
    echo "无法获取当前布局，当前布局为空"
    exit 1
fi

# 切换布局
echo "当前布局: $current_layout"
if [[ "$current_layout" == "dwindle" ]]; then
    hyprctl keyword general:layout master
    echo "切换为 master 布局"
else
    hyprctl keyword general:layout dwindle
    echo "切换为 dwindle 布局"
fi

