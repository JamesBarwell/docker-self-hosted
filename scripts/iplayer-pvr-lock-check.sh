#!/bin/sh

if [ -f ~/services/config/iplayer-radio/pvr_lock ]; then
    notify-send -u critical -a iplayer_radio_pvr_lock "iPlayer Radio PVR lock" "The iPlayer Radio PVR service is currently locked. Please delete the lock file."
fi

if [ -f ~/services/config/iplayer-tv/pvr_lock ]; then
    notify-send -u critical -a iplayer_tv_pvr_lock "iPlayer TV PVR lock" "The iPlayer TV PVR service is currently locked. Please delete the lock file."
fi
