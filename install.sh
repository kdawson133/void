#!/bin/sh

echo "Installing full desktop environment..."
echo
echo "Installing Niri Window Manager..."
source scripts/05-niri.sh
echo
echo "Installing Steam..."
source scripts/10-steam.sh
echo
echo "Done!"
