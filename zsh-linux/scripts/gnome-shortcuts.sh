#!/usr/bin/env bash

# Run 'gsettings get org.gnome.shell favorite-apps' to see the order of pinned applications.
gsettings set org.gnome.shell.keybindings switch-to-application-1 "['<Super>w']"
gsettings set org.gnome.shell.keybindings switch-to-application-2 "['<Super>Return']"
gsettings set org.gnome.shell.keybindings switch-to-application-3 "['<Super>k']"
