killall polybar

killall -q polybar


while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done


polybar bottom -c ~/.config/polybar/Modern/config.ini &
polybar top  -c ~/.config/polybar/Modern/config.ini &
