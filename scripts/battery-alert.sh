#!/bin/bash

# battery.service goes in '~/.config/systemd/user/'
# -------------------------------------------------
# [Unit]
# Description=Send alerts on battery events
#
# [Service]
# Type=simple
# ExecStart=/bin/bash /home/maciek/.local/bin/battery-alert
# Environment="DISPLAY=:0" "XAUTHORITY=/home/maciek/.Xauthority"
# Restart=always
# RestartSec=10
#
# [Install]
# WantedBy=default.target
# -------------------------------------------------

# Afterwards run
# 'systemctl --user daemon-reload'
# 'systemctl --user enable battery.service'
# 'systemctl --user start battery.service'

# Check AC adapter status and Battery Voltage
if [ $(cat /sys/class/power_supply/AC0/online) -eq "0" ] && \
   [ $(cat /sys/class/power_supply/BAT0/energy_now) -lt "5450000" ]; then
        # Display Notification
        if [ $DISPLAY ]; then
            dunstify -u critical \
            -r 2789 \
            "Battery Critically Low" "Plug in to AC or Suspend immediately";
       fi

elif [ $(cat /sys/class/power_supply/AC0/online) -eq "1" ] && \
    [ $(cat /sys/class/power_supply/BAT0/voltage_now) -gt "11500000" ]; then
        # Display Notification
        if [ $DISPLAY ]; then
            dunstify -u normal \
            -r 2789 \
            -t 7000 "Battery Almost Full" "Please unplug charger, or remove battery";
        fi
fi

