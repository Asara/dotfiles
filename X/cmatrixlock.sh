#!/usr/bin/env bash
i3-sensible-terminal -e cmatrix &
xtrlock
kill -9 $(pgrep cmatrix)
