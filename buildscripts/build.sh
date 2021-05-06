#!/bin/bash
cd ..

# MENUDEF
rm ./menudef.txt
cat ./core/menudef.txt >> ./menudef.txt
find \
	-name "menudef*" \
	-not -path "./core/*" \
	-not -path "./menudef.txt" \
	-not -path "./core/menudef.txt" \
	-exec cat {} + >> ./menudef.txt

# MAPINFO
rm ./mapinfo.txt
find \
	-name "mapinfo*" \
	-exec cat {} + >> ./mapinfo.txt

# TEXTUREs
rm ./textures.txt
find \
	-name "textures*" \
	-exec cat {} + >> ./textures.txt

# SNDINFO
rm ./sndinfo.txt
find \
	-name "sndinfo*" \
	-exec cat {} + >> ./sndinfo.txt