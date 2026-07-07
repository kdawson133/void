#!/bin/sh

echo "Installing full desktop environment..."
echo
echo "Installing Niri Window Manager..."
source scripts/00-gnome.sh
echo
echo "Installing Steam..."
source scripts/10-steam.sh
echo
echo "Done!"
