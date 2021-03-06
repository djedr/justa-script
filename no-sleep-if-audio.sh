#!/bin/bash
# usage:
# self [<check_interval>]
# `check_interval` is an argument to `sleep`. Default `check_interval` is 10 minutes.
check_interval=${1:-10m}

echo 'Entering no-sleep-if-audio...'
echo 'From now on sleep mode will be turned off when audio is active.'
while true; do
    if grep -q RUNNING /proc/asound/card*/*p/*/status 2>&1; then
	echo 'Preventing sleep mode...'
        xdotool mousemove_relative -- 1 0
        sleep 0.1s
        xdotool mousemove_relative -- -1 0
	echo 'Prevented sleep mode.'
    fi
    sleep $check_interval
done
echo 'Exiting no-sleep-if-audio...'
echo 'From now on sleep mode will work as usual.'
