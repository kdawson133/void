#!/bin/sh

# Enable Repos
sudo xbps-install -S void-repo-multilib void-repo-nonfree

# Add noctalia repo
echo "repository=https://repo.voiders.dev" | sudo tee /etc/xbps.d/10-voiders-community.conf

# Update Repos
sudo xbps-install -Su

# Install Main packages
sudo xbps-install vim neovim dbus elogind polkit xorg xorg-fonts xorg-input-drivers NetworkManager pipewire alsa-pipewire wireplumber xdg-user-dirs unzip gzip xz 7zip

# Install CLI tools
sudo xbps-install wl-clipboard xsel xclip nodejs bat eza git base-devel helix starship zsh

# Install Desktop Packages
sudo xbps-install niri noctalia fuzzel alacritty 

# Add Services
sudo ln -s /etc/sv/gdm /var/service
sudo ln -s /etc/sv/NetworkManager /var/service
sudo ln -s /etc/sv/dbus /var/service
sudo ln -s /etc/sv/polkitd /var/service

# Configure Pipewire
sudo mkdir -p /etc/xdg/autostart
sudo ln -sf /usr/share/applications/pipewire.desktop /etc/xdg/autostart
sudo mkdir -p /etc/pipewire/pipewire.conf.d
sudo ln -sf /usr/share/examples/wireplumber/10-wireplumber.conf /etc/pipewire/pipewire.conf.d
sudo ln -sf /usr/share/examples/pipewire/20-pipewire-pulse.conf /etc/pipewire/pipewire.conf.d
sudo mkdir -p /etc/alsa/conf.d
sudo ln -sf /usr/share/alsa/alsa.conf.d/50-pipewire.conf /etc/alsa/conf.d
sudo ln -sf /usr/share/alsa/alsa.conf.d/99-pipewire-default.conf /etc/alsa/conf.d



