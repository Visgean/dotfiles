#!/bin/bash

was_paused=0 # if last state was paused
ad=0 # if an ad is probably playing right now

while true; do
    num=$(pactl list | grep -E '(^Sink Input)|(media.name = \"Spotify\"$)' | awk '/Spotify/ {print a} {a = $0}' | cut -c 13-)

    icon_name=$(xprop -name 'Spotify Free - Linux Preview' _NET_WM_ICON_NAME | cut -d \" -f 2)
    song_name=$(dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify / org.freedesktop.MediaPlayer2.GetMetadata | grep xesam:title -A 1 | grep variant | cut -d \" -f 2)

    if [[ "$song_name" && "$icon_name" =~ "$song_name" ]]; then
        if [ "$was_paused" -eq 0 -a "$ad" -ne 0 ]; then
            # wait 1 second after a commercial
            sleep 1
        fi

        ad=0
        pactl set-sink-input-mute $num no
    else
        ad=1
        pactl set-sink-input-mute $num yes
    fi

    if [ "$icon_name" = "Spotify" ]; then
        was_paused=1
    else
        was_paused=0
    fi

    sleep 0.5
done
