#!/bin/sh
# Installing Prerequisites
sudo xbps-install podman wget
wget -qO- https://raw.githubusercontent.com/89luca89/distrobox/main/install | sudo sh
echo 'unqualified-search-registries = ["docker.io"]' | sudo tee -a /etc/containers/registries.conf
