#!/usr/bin/env bash
i3-sensible-terminal -e  livestreamer -Q http://ustream.tv/channel/iss-hdev-payload best --player 'mpv --fs ' &
xtrlock
kill -9 $(ps aux | grep 'mpv' | grep -v grep | awk '{print $2}')
