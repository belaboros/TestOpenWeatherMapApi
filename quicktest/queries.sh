#!/bin/bash

source apikey.properties


if [ -z "$WEATHERMAP_API_KEY" ]; then
    echo "Missing environment variable: WEATHERMAP_API_KEY"
    exit 1
fi

clear
echo -e "Using OpenWeatherMap API Key: ${WEATHERMAP_API_KEY}"


# api.openweathermap.org/data/2.5/weather?q={city name},{country code}
echo -e "\n\n\nHTTP GET http://api.openweathermap.org/data/2.5/weather?q=Amsterdam,nl&APPID=${WEATHERMAP_API_KEY}"
curl "http://api.openweathermap.org/data/2.5/weather?q=Amsterdam,nl&APPID=${WEATHERMAP_API_KEY}" | jq





