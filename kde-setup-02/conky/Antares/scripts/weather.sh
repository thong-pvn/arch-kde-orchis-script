#!/bin/bash

api_key=1a574cba6c46aef984b2efbe3061b147
city_id=5128581
url="api.openweathermap.org/data/2.5/weather?id=${city_id}&appid=${api_key}"
curl ${url} -s -o ~/.cache/eleg-weather.json
