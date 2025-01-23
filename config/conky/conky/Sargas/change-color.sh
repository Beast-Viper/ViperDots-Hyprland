#!/usr/bin/env bash

# v1.5 Closebox73
# This script is linked to Sargas.conf lines
# So don't  add a line there unless you change here too

COLOR=${1}

sleep 0.5s

if [ -x /usr/bin/figlet ] ; then
    figlet -t "Sargas"
    echo "Color changer script"
    else
    echo "Sargas color changer"
fi

sleep 1s
echo "Processing....."
sleep 2s

echo "Stoping Sargas"
killall conky

sleep 0.7s
echo "Set up Accent"
sed -i "34s|color1 = .*|color1 = '${COLOR}',|" ~/.config/conky/Sargas/Sargas.conf &
sleep 0.2s
sed -i "27s|fg_colour=0x.*|fg_colour=0x${COLOR},|" ~/.config/conky/Sargas/scripts/rings-v1.2.1.lua &
sleep 0.2s
sed -i "41s|fg_colour=0x.*|fg_colour=0x${COLOR},|" ~/.config/conky/Sargas/scripts/rings-v1.2.1.lua &
sleep 0.2s
sed -i "55s|fg_colour=0x.*|fg_colour=0x${COLOR},|" ~/.config/conky/Sargas/scripts/rings-v1.2.1.lua &
sleep 0.2s
sed -i "69s|fg_colour=0x.*|fg_colour=0x${COLOR},|" ~/.config/conky/Sargas/scripts/rings-v1.2.1.lua &

sleep 1s
echo "Success.."

sleep 1s
echo "Restarting Sargas..."
conky -c $HOME/.config/conky/Sargas/Sargas.conf &> /dev/null &

sleep 5s
echo "Done"

exit
