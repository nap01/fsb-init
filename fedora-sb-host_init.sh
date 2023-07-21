#!/usr/bin/env bash

# Packages/Containers
## enable flathub
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
## install flatseal
flatpak install flathub com.github.tchx84.Flatseal -y

# communications
## discord
flatpak install flathub com.discordapp.Discord -y
## signal
flatpak install flathub org.signal.Signal -y

# Development Environment
## Create Fedora Distrobox
distrobox create -i registry.fedoraproject.org/fedora-toolbox:38 --init --additional-packages "systemd" -n fedora -Y
## Create Ubuntu Distrobox
distrobox create -i quay.io/toolbx-images/ubuntu-toolbox:22.04 --init --additional-packages "systemd" -n ubuntu -Y
## Create Arch Distrobox
distrobox create -i quay.io/toolbx-images/archlinux-toolbox --init --additional-packages "systemd" -n arch -Y
## Git Config
git config --global user.name "$GITUSER"
git config --global user.email "$USEREMAIL"
git config --global core.editor "code --wait"
#git config --global core.editor "vim --nofork"