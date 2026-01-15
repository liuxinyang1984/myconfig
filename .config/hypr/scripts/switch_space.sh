#!/bin/bash
# 获取当前工作区的输出
workspace_output=$(hyprctl activeworkspace)

# 打印当前工作区的输出
echo "当前工作区输出："
echo "$workspace_output"

# 从输出中提取工作区编号（假设它跟在 'workspace ID' 后面）
current_workspace=$(echo "$workspace_output" | grep -oP 'workspace ID \K\d+')

# 确保当前工作区为数字格式
if ! [[ "$current_workspace" =~ ^[0-9]+$ ]]; then
    echo "无法获取当前工作区，输出：$workspace_output"
    exit 1
fi

# 获取下一个工作区的编号
next_workspace=$((current_workspace + 1))

# 如果当前是9号工作区，则回到1号工作区
if [ "$next_workspace" -gt 9 ]; then
    next_workspace=1
fi

# 切换到下一个工作区（作为字符串）
echo "切换到工作区 $next_workspace"
hyprctl workspace "$next_workspace"

