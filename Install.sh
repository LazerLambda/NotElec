#!/bin/bash

npm install
npm run dist

sudo mkdir /usr/bin/NotElec

# Download Logo
wget https://upload.wikimedia.org/wikipedia/commons/4/45/Notion_app_logo.png

# Move AppImage to bin folder
sudo cp "$PWD/dist/NotElec-0.1.0.AppImage" /usr/bin/NotElec/NotElec-0.1.0.AppImage
sudo cp "$PWD/Notion_app_logo.png" /usr/bin/NotElec/icon.png
sudo cp "$PWD/NotElec.desktop" /usr/share/applications/NotElec.desktop
