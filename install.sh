#!/bin/sh

echo "Installing full desktop environment..."
echo
echo "Installing Gnome Desktop Environment"
source scripts/00-gnome.sh
echo
echo "Installing Steam"
source scripts/10-steam.sh
echo
echo "Installing Distrobox"
source scripts/20-distrobox.sh
echo
echo "Done!"
