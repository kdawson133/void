#!/bin/sh

# Install 32bit libraries
sudo xbps-install libgcc-32bit libstdc++-32bit libdrm-32bit libglvnd-32bit mesa-32bit mesa-dri-32bit
# Install Additional Packages
sudo xbps-install mono vulkan-loader amdvlk xf86-video-amdgpu mesa-vaapi mesa-vdpau gstreamer1
# Install Stem
sudo xbps-install steam
