#!/bin/bash
# usage:
# self [<check_interval>]
# `check_interval` is an argument to `sleep`. Default `check_interval` is 10 minutes.
check_interval=${1:-10m}

while true; do
    if grep -q RUNNING /proc/asound/card*/*p/*/status 2>&1; then
        xdotool mousemove_relative -- 1 0
        sleep 0.1s
        xdotool mousemove_relative -- -1 0
    fi
    sleep $check_interval
done
