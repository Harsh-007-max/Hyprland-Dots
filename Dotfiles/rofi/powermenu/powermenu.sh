#!/bin/bash
 
lock=" Lock"
logout=" Logout"
shutdown=" Poweroff"
reboot=" Reboot"
sleep=" Suspend"
 
selected_option=$(echo "$lock
$logout
$sleep
$reboot
$shutdown" | rofi -dmenu -i -p "Powermenu" \
		  -theme "~/.config/rofi/powermenu/powermenu.rasi")

if [ "$selected_option" == "$lock" ]
then
  sleep 1 ;/bin/bash ~/.config/swaylock/lock.sh
elif [ "$selected_option" == "$logout" ]
then
  loginctl terminate-user `whoami`
elif [ "$selected_option" == "$shutdown" ]
then
  sleep 1; poweroff 
elif [ "$selected_option" == "$reboot" ]
then
  sleep 1; reboot 
elif [ "$selected_option" == "$sleep" ]
then
  /bin/bash ~/.config/swaylock/lock.sh & systemctl suspend
else
  echo "No match"
fi
