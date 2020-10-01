# pi-dashboard-setup
Overriding the Raspberry Pi 3 / Raspbian default config to set up a PI as a dashboard that's on 24/7


## Setup

Copy the contents of the files in this repo onto your pi. The absolule filepaths are contained in each file, or follow the instructions below:

### /etc/lightdm/lightdm.conf

Append the following to lightdm.conf to prevent the screen sleeping after X minutes of inactivity 

```
[SeatDefaults]
# don't sleep the screen
xserver-command=X -s 0 dpms
```


## /etc/xdg/lxsession/LXDE-pi/autostart

Remove the following line to prevent any screensavers:
```
#@xscreensaver -no-splash
```
And then add the following to auto-start Chrome with a web-page of your chosing:

```
# load chromium after boot and point to a website in full screen mode
# The 1st time you load this page may require some configuration such as browser permissions 
chromium-browser --start-fullscreen --disable-restore-session-state --app=http://stebaker92.gitlab.io/pi-dashboard/?latlong=53.44682,-2.63171
```


## Setup-LCD.sh (optional)
This step is only required for my setup - it's basically drivers for the LCD screen I bought.

