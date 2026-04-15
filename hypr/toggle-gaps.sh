if [ $(hyprctl getoption general:gaps_out | awk 'NR==1{print $3}') = 0 ]; then
	hyprctl keyword general:gaps_out 8
	hyprctl keyword general:gaps_in 4
	hyprctl keyword decoration:rounding 4
else
	hyprctl keyword general:gaps_out 0
	hyprctl keyword general:gaps_in 0
	hyprctl keyword decoration:rounding 0
fi
