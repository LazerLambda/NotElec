#!/bin/bash

# Install Requirements
npm install
npm run dist

# Move AppImage to bin folder
sudo mkdir /usr/bin/NotElec
sudo cp "$PWD/dist/NotElec-0.1.1.AppImage" /usr/bin/NotElec/NotElec-0.1.1.AppImage
sudo cp "$PWD/NotElec.desktop" /usr/share/applications/NotElec.desktop

# Download Logo
wget https://upload.wikimedia.org/wikipedia/commons/4/45/Notion_app_logo.png
sudo cp "$PWD/Notion_app_logo.png" /usr/bin/NotElec/icon.png

echo "You may remove the downloaded folder now. For uninstall, run: './Uninstall.sh'"