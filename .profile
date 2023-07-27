# 系统别名
source ~/.alias.sh
source ~/.sshhost.sh
# 自定义脚本
export PATH=~/.shell:$PATH
export LIBVIRT_DEFAULT_URI=qemu:///system


# MPD daemon start (if no other user instance exists)
#[ ! -s ~/.config/mpd/pid ] && mpd


