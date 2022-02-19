#!/bin/sh

ask=`zenity --list --title="Power Menu" --column="0" "MonitorFix" "Monitor Resolution 480p" "Monitor Resolution 720p" "NotifyTest" "Cmus RPC" "Colour pick" --width=100 --height=300 --hide-header`

if [ "$ask" == "MonitorFix" ]; then
	sh ~/.config/i3/monitor.sh
fi

if [ "$ask" == "NotifyTest" ]; then
	sh ~/.config/i3/NotifyTest.sh
fi

if [ "$ask" == "Cmus RPC" ]; then
	/home/gloopy/cmus-discord-rpc/target/release/cmus-discord-rpc
fi

if [ "$ask" == "Monitor Resolution 480p" ]; then
	xrandr --output HDMI-1-0 --mode 720x480
fi

if [ "$ask" == "Monitor Resolution 720p" ]; then
	xrandr --output HDMI-1-0 --mode 1280x720
fi

if [ "$ask" == "Colour pick" ]; then
	sh /home/gloopy/.config/i3/colorpick.sh
fi

exit 0

