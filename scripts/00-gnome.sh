#!/bin/sh

# Enable Repos
sudo xbps-install -S void-repo-multilib void-repo-nonfree
# Update Repos
sudo xbps-install -S
# Install Main packages
sudo xbps=install xorg gnome gnome-apps pipewire
# Add Services
ln -s /etc/sv/gdm /var/service
ln -s /etc/sv/NetworkManager /var/service
ln -s /etc/sv/dbus /var/service
# Add Autostart
ln -s /usr/share/applications/pipewire.desktop /etc/xdg/autostart
