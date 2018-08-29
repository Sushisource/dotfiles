#!/bin/bash
xset m 6/5 0
xrdb -cpp /usr/bin/cpp -merge $HOME/.Xresources
export TERMINAL=urxvt256c
exec i3
