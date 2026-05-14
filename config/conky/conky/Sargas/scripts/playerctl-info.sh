#!/bin/bash

# v2.0
# Closebox73
# Multi-output playerctl info script (artist, title, icon)

PCTL=$(playerctl status 2>/dev/null)

# Feather Font icons
ICON_NONE=""
ICON_STOPPED=""
ICON_PLAYING=""
ICON_PAUSED=""
ICON_UNKNOWN=""

# Handle flags
case "$1" in
	-a)
		if [[ -z "$PCTL" ]]; then
			echo "No music played"
		else
			playerctl metadata xesam:artist 2>/dev/null | cut -c 1-18
		fi
		;;
	-t)
		if [[ -z "$PCTL" ]]; then
			echo "No title"
		else
			playerctl metadata xesam:title 2>/dev/null | cut -c 1-24
		fi
		;;
	-i)
		case "$PCTL" in
			"")
				echo "$ICON_NONE"
				;;
			"Stopped")
				echo "$ICON_STOPPED"
				;;
			"Playing")
				echo "$ICON_PLAYING"
				;;
			"Paused")
				echo "$ICON_PAUSED"
				;;
			*)
				echo "$ICON_UNKNOWN"
				;;
		esac
		;;
	*)
		echo "Usage: $0 -a (artist) | -t (title) | -i (icon)"
		exit 1
		;;
esac

exit 0
