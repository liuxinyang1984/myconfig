# 系统别名
source ~/.alias.sh
source ~/.sshhost.sh
source ~/.mysqlhost.sh
# 自定义脚本
export PATH=~/.shell:$PATH
export LIBVIRT_DEFAULT_URI=qemu:///system
export QT_AUTO_SCREEN_SCALE_FACTOR=1


# MPD daemon start (if no other user instance exists)
#[ ! -s ~/.config/mpd/pid ] && mpd

if [ -z "$DISPLAY" ] && [ -z "$WAYLAND_DISPLAY" ] && [ -n "$XDG_VTNR" ]; then
  echo "纯文本虚拟终端: VT $XDG_VTNR"
else
  echo "图形终端或其他环境"
fi
