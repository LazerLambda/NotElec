#!/bin/bash

npm install
npm run dist

sudo mkdir /usr/bin/NotElec

# Move AppImage to bin folder
sudo cp "$PWD/dist/NotElec-0.1.0.AppImage" /usr/bin/NotElec/NotElec-0.1.0.AppImage
sudo cp "$PWD/Icon/Icon.png" /usr/bin/NotElec/Icon.png
sudo cp "$PWD/NotElec.desktop" /usr/share/applications/NotElec.desktop

