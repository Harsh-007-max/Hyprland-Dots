#/bin/bash
~/git-repo/eww/target/release/eww daemon
online_status=$(cat /sys/class/power_supply/ACAD/online)
killall mpvpaper hyprpaper
if [ "$online_status" -eq 1 ]; then
  hyprpaper
  # mpvpaper eDP-1 -o loop ~/Pictures/wallpaper/Video-Wallpapers/goku-ultra-instinct.1920x1080.mp4
else
 hyprpaper
fi
