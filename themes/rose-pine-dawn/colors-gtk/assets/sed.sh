#!/bin/sh
sed -i \
         -e 's/#fffaf3/rgb(0%,0%,0%)/g' \
         -e 's/#575279/rgb(100%,100%,100%)/g' \
    -e 's/#faf4ed/rgb(50%,0%,0%)/g' \
     -e 's/#ea9d34/rgb(0%,50%,0%)/g' \
     -e 's/#f2e9de/rgb(50%,0%,50%)/g' \
     -e 's/#cecacd/rgb(0%,0%,50%)/g' \
	"$@"
