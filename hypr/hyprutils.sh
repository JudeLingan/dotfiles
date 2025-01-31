#!/bin/bash

case "$1" in
	"brightness-up")
		light -A 5
		;;
	"brightness-down")
		light -U 5
		;;
	"mute")
		pactl set-sink-mute @DEFAULT_SINK@ toggle
		;;
	"volume-up")
		sh -c "pactl set-sink-mute 0 false ; pactl set-sink-volume 0 +5%"
		;;
	"volume-down")
		sh -c "pactl set-sink-mute 0 false ; pactl set-sink-volume 0 -5%"
		;;
	*)
		echo "bad input";
		;;
esac
