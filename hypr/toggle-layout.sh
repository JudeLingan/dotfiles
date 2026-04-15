#!/usr/bin/env bash
layout=$(hyprctl getoption general:layout | awk 'NR==1{print $2}')
if [ "$layout" = "$1" ]; then
	hyprctl keyword general:layout "master"
else
	hyprctl keyword general:layout "$1"
fi
