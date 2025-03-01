#!/bin/bash

case "$1" in
	"brightness-up")
		brightnessctl set +5%
		;;
	"brightness-down")
		brightnessctl set 5%-
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
