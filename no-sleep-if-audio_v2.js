#!/bin/bash
# usage:
# self [<check_interval>]
# `check_interval` is an argument to `sleep`. Default `check_interval` is 10 minutes.
const checkInterval = process.argv[2] || '10m';
const maxIdleTime = 2h;
let idleTime = 0;

while true; do
    if grep -q RUNNING /proc/asound/card*/*p/*/status 2>&1; then
        xdotool mousemove_relative -- 1 0
        sleep 0.1s
        xdotool mousemove_relative -- -1 0
        idle_time=idle_time+
    else
        idle_time=0
    fi
    if (mouse_position_changed) then
        idle_time=0
    fi
    sleep $check_interval
done
