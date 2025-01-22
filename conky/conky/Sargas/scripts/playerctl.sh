#!/bin/bash

# Closebox73
# Simple script to get playerctl status

PCTL=$(playerctl status)
ARTS=$(playerctl metadata xesam:artist)

if [[ ${PCTL} == "" ]]; then
	echo "No music played"
else
	echo "Now you're listening to ${ARTS}"
fi

exit
