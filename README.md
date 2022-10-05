# sway-xwayland-display-fix
A fix for XWayland losing track of the primary monitor after a monitor disconnects.

## Installation
Run `install.sh` as root:
```
sudo ./install.sh
```
## Usage
Add the script `sway-xwayland-display-fix` to your sway config, with an `&` at the end of the line. You can do this by adding this line to the config:
```
exec_always sway-xwayland-display-fix &
```
You'll need to specify the display you wish to be your primary by making a quick edit to the script. Simply open `sway-xwayland-display-fix` in a text editor and replace `DP-3` in the line `wantedprimary="DP-3"` with the name of your monitor. This can be obtained by running `swaymsg -t get_outputs` and looking through the displays.

You'll also need to reload udev rules after installing it, if you don't wish to reboot:
```
sudo udevadm control --reload-rules
```
## Disclaimer
I'm not responsible if this script makes your computer eat your face
