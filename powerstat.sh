#! /bin/bash
awk 'BEGIN{getline c<"/sys/class/power_supply/BAT1/current_now"; getline v<"/sys/class/power_supply/BAT1/voltage_now"; printf "%.2f W\n", c*v/1e12}'
