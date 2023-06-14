#!/bin/bash
#
# ~/.xinitrc

xrdb $HOME/.Xresources
sxhkd -c $HOME/.config/berry/sxhkdrc &
exec berry