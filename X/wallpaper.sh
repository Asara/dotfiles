#!/bin/bash

# Set Slim background file  here
SLIM="/usr/share/slim/themes/default/background.jpg"
# Set directory with wallpapers here
WPDIR="/home/$USER/macros/wallpapers/"


WP=$WPDIR$(ls -a $WPDIR | shuf -n 1)

# Set random wallpaper as Slim background
cp $WP $SLIM

# Symlink the wallpaper
ln -s $WP /tmp/wallpaper
