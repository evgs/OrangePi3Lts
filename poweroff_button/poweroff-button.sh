#!/bin/bash

#THIS IS PLACEHOLDER, WORK IN PROGRESS

safe_temp=50

while :
do
        #button check placeholder
        sleep 1

        # ready to poweroff in klipper shutdown state
        curl -s http://127.0.0.1:7125/printer/objects/query?webhooks | jq -M .result.status.webhooks.state | grep -q shutdown && break

        # prevent poweroff if printing
        curl -s http://127.0.0.1:7125/printer/objects/query?print_stats | jq -M .result.status.print_stats.state | grep -q printing && continue

        #prevent poweroff if hotend is hot
        hotend_temp=`curl -s http://127.0.0.1:7125/printer/objects/query?extruder | jq .result.status.extruder.temperature`
        is_safe=$(echo "$hotend_temp < $safe_temp" | bc -l)
        echo $hotend_temp $is_safe
        [ $is_safe -eq 1 ] && break
done

#sudo poweroff
