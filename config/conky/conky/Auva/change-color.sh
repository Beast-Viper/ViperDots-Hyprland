#!/usr/bin/env bash

# This script is linked to Auva.conf and Auva2.conf lines
# So don't  add or remove a line there unless you change here too

# use HEX color for example FFFFFF etc.
COLOR=${1}

if [ -x /usr/bin/figlet ] ; then
    figlet -t "Auva Dark"
    echo "Color changer script"
    else
    echo "AUVA DARK color changer script"
fi

echo "Processing....."
sleep 2s

echo "Stoping Auva"
killall conky

sleep 0.7s
echo "Creating bg.png"
convert -size 100x100 xc:#$COLOR ~/.config/conky/Auva/res/bg.png
sleep 0.2s
convert -size 100x36 xc:#$COLOR ~/.config/conky/Auva/res/bcg.png
convert -size 100x36 xc:none -draw "roundrectangle 0,0,100,36,19,19" png:- | convert ~/.config/conky/Auva/res/bcg.png -matte - -compose DstIn -composite ~/.config/conky/Auva/res/bcg.png

sleep 0.7s
echo "Set up Accent"
sed -i "34s|color1 = .*|color1 = '${COLOR}',|" ~/.config/conky/Auva/Auva2.conf &
sleep 0.2s
sed -i "25s|bg_colour=0x.*|bg_colour=0x${COLOR},|" ~/.config/conky/Auva/scripts/lua/rings-v1.2.1.lua &
sleep 0.2s
sed -i "27s|fg_colour=0x.*|fg_colour=0x${COLOR},|" ~/.config/conky/Auva/scripts/lua/rings-v1.2.1.lua &
sleep 0.2s
sed -i "39s|bg_colour=0x.*|bg_colour=0x${COLOR},|" ~/.config/conky/Auva/scripts/lua/rings-v1.2.1.lua &
sleep 0.2s
sed -i "41s|fg_colour=0x.*|fg_colour=0x${COLOR},|" ~/.config/conky/Auva/scripts/lua/rings-v1.2.1.lua &
sleep 0.2s
sed -i "53s|bg_colour=0x.*|bg_colour=0x${COLOR},|" ~/.config/conky/Auva/scripts/lua/rings-v1.2.1.lua &
sleep 0.2s
sed -i "55s|fg_colour=0x.*|fg_colour=0x${COLOR},|" ~/.config/conky/Auva/scripts/lua/rings-v1.2.1.lua &
sleep 0.2s
sed -i "67s|bg_colour=0x.*|bg_colour=0x${COLOR},|" ~/.config/conky/Auva/scripts/lua/rings-v1.2.1.lua &
sleep 0.2s
sed -i "69s|fg_colour=0x.*|fg_colour=0x${COLOR},|" ~/.config/conky/Auva/scripts/lua/rings-v1.2.1.lua &

sleep 1s
echo "Success.."

sleep 1s
echo "Restarting Auva..."
sleep 0.2s
conky -c $HOME/.config/conky/Auva/Auva.conf &> /dev/null &
conky -c $HOME/.config/conky/Auva/Auva2.conf &> /dev/null &

sleep 5s
echo "Done"

exit
