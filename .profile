# 系统别名
source ~/.alias.sh
# 自定义脚本
export PATH=~/.shell:$PATH

# MPD daemon start (if no other user instance exists)
[ ! -s ~/.config/mpd/pid ] && mpd


