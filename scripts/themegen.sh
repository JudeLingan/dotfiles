#!/usr/bin/env bash

# This script is intended to be used to automate the process of generating the simple components of a theme
# it reads the colors from a base16 yaml file and then calls bash scripts which take 16 inputs
# then, it finds and replaces any instances of a character specified in each file, followed by a base16 number to output it to that file
# it is intended to be a simpler alternative to something like flavours that encourages manual intervention after themes are created
# it is a starting point for a colorscheme, not the final result

function generate_file {
	echo "func"
}

if [ $# != 1 ]; then
	echo "please provide name of base16 yaml file to read
some examples can be found at https://github.com/tinted-theming/schemes/blob/spec-0.11/base16"
	exit 1
fi

# load all colors into an array
eval "$(awk '
	BEGIN {
		err = 0
		out = "declare -a colors=("
	}

	END {
		if (err == 0)
			print out " )"
	}

	$1 ~ /^base/ {
		key = substr($1, 5, 2)
		value = substr($2, 3, 6)

		if (key !~ /^[0-9a-fA-F]{2}$/ || value !~ /^[0-9a-fA-F]{6}$/) {
			print "echo invalid pair {" key ", " value "}"
			err = 1
			print "exit 1"
		}

		out = out " [0x" key "]=\"" value "\""
	}
' $1)"

# print colors
for i in "${!colors[@]}"; do
	printf "base%02X: #%s\n" $i "${colors[$i]}"
done

# load all files from templates and args
if ! [ -e "$HOME/.config/theme-templates" ]; then
	echo "theme-templates folder doesn't exist"
	exit 1
fi

for template in "$(ls $HOME/.config/theme-templates)"; do
	echo "generating: $template"
done
