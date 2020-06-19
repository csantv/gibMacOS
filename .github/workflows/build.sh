#!/bin/bash

python3 gibMacOS.command --latest
DOWNDIR="$PWD/$(find 'macOS Downloads' -type d | tail -1)"
python3 BuildmacOSInstallApp.command $DOWNDIR
sudo "$DOWNDIR/Install macOS Catalina.app/Contents/Resources/createinstallmedia" --help
