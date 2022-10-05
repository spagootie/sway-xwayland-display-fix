#!/bin/bash 

chmod +x sway-xwayland-display-fix
chmod +x sway-xwayland-fix-trigger

mv sway-xwayland-display-fix sway-xwayland-fix-trigger /usr/local/bin/
mv 95-sway-xwayland-fix.rules /etc/udev/rules.d/
