#!/bin/bash

# v4.0 Closebox73
# Weather fetcher for OpenWeatherMap with offline caching and wind direction

# === CONFIG ===
# get your city id at https://openweathermap.org/find and replace
city_id=1256287

# replace with yours
api_key=07a268917078219ed2d5694813467641

# choose between metric for Celcius or imperial for fahrenheit
unit=metric

# i'm not sure it will support all languange, 
lang=en

url="https://api.openweathermap.org/data/2.5/weather?id=${city_id}&appid=${api_key}&cnt=5&units=${unit}&lang=${lang}"
weather_file=~/.cache/weather.json

# === FUNCTIONS ===

# Download JSON from OpenWeatherMap
get_data () {
	curl -s "${url}" -o "$weather_file"
}

# Round float to nearest integer
round () {
	awk '{ print int($1 + 0.5) }'
}

# Convert wind degree to compass direction
wind_direction () {
	local deg=$(jq -r '.wind.deg // empty' "$weather_file")

	# Validate input
	if [[ -z "$deg" || ! "$deg" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
		echo "Unknown"
		return
	fi

	deg=${deg%.*}  # remove decimals

	if (( deg >= 0 && deg <= 22 )) || (( deg > 337 && deg <= 360 )); then
		echo "North"
	elif (( deg > 22 && deg <= 67 )); then
		echo "Northeast"
	elif (( deg > 67 && deg <= 112 )); then
		echo "East"
	elif (( deg > 112 && deg <= 157 )); then
		echo "Southeast"
	elif (( deg > 157 && deg <= 202 )); then
		echo "South"
	elif (( deg > 202 && deg <= 247 )); then
		echo "Southwest"
	elif (( deg > 247 && deg <= 292 )); then
		echo "West"
	elif (( deg > 292 && deg <= 337 )); then
		echo "Northwest"
	else
		echo "Unknown"
	fi

}

weather_icon () {
	local icon=$(jq -r '.weather[0].icon' "$weather_file")

	case "$icon" in
		"01d") echo "" ;;  # Clear day
		"01n") echo "" ;;  # Clear night
		"02d"|"02n"|"03d"|"03n"|"04d"|"04n") echo "" ;;  # Clouds
		"09d"|"09n") echo "" ;;  # Shower rain
		"10d"|"10n") echo "" ;;  # Rain
		"11d"|"11n") echo "" ;;  # Thunderstorm
		"13d"|"13n") echo "" ;;  # Snow
		"50d"|"50n") echo "" ;;  # Mist
		*) echo "" ;;  # No data / unknown
	esac
}

# === FLAGS ===
case $1 in
	-g) get_data ;;
	-n) jq -r '.name' "$weather_file" ;;
	-c) jq -r '.sys.country' "$weather_file" ;;
	-m) jq -r '.weather[0].main' "$weather_file" | sed "s|\<.|\U&|g" ;;
	-d) jq -r '.weather[0].description' "$weather_file" | sed "s|\<.|\U&|g" ;;
	-i) weather_icon ;;
	-t) jq '.main.temp' "$weather_file" | round ;;
	-tx) jq '.main.temp_max' "$weather_file" | round ;;
	-tn) jq '.main.temp_min' "$weather_file" | round ;;
	-f) jq '.main.feels_like' "$weather_file" | round ;;
	-p) jq '.main.pressure' "$weather_file" ;;
	-ws) jq '.wind.speed' "$weather_file" ;;
	-wd) jq '.wind.deg' "$weather_file" ;;
	-wr) wind_direction ;;
	-h) jq '.main.humidity' "$weather_file" ;;
	-v) jq '.visibility' "$weather_file" | sed 's/...$//' ;;
	-sr) jq '.sys.sunrise' "$weather_file" | xargs -I{} date -d @{} +"%H:%M" ;;
	-ss) jq '.sys.sunset' "$weather_file" | xargs -I{} date -d @{} +"%H:%M" ;;
esac

exit 0
