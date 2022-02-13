#!/bin/sh

ask=`zenity --list --title="Power Menu" --column="0" "MonitorFix" "NotifyTest" "Cmus RPC" --width=100 --height=300 --hide-header`

if [ "$ask" == "MonitorFix" ]; then
	sh ~/.config/i3/monitor.sh
fi

if [ "$ask" == "NotifyTest" ]; then
	sh ~/.config/i3/NotifyTest.sh
fi

if [ "$ask" == "Cmus RPC" ]; then
	/home/gloopy/cmus-discord-rpc/target/release/cmus-discord-rpc
fi

exit 0

