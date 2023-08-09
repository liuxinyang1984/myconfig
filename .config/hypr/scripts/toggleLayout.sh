#!/bin/bash
export HYPR_LAYOUT="sha"
 if [ $HYPR_LAYOUT=="master" ]
    then
        export HYPR_LAYOUT="dwindle"
        hyprctl keyword general:layout dwindle
        echo "切换为dwindle"
    else
        export HYPR_LAYOUT="master"
        hyprctl keyword general:layout master
        echo "切换为master"
 fi
