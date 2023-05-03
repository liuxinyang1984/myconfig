#!/bin/bash

case $1 in 
    nas)
        targer="mnt-nas"
        ;;
    www)
        targer="mnt-www"
        ;;
    games)
        targer="home-yang-Games"
        ;;
esac
sudo sudo systemctl start $targer.mount

