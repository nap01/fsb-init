#!/usr/bin/env bash

# Import Enviroment Variables
set -a; source .env; set +a

# Git Config
git config --global user.name "$FULLNAME"
git config --global user.email $EMAIL

# Install VSCode
#sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
#sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
#dnf check-update
#sudo dnf install code -y
#distrobox-export --app code