
# Terminate already running bar instances
killall -q polybar

while pgrep -u $UID -x polyba >/dev/null; do sleep 1; done

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    # MONITOR=$m polybar --reload main &
    MONITOR=$m polybar --reload dots &
  done
else
  polybar --reload main &
  polybar --reload dots &
fi

# Launch the bar
polybar eDP &
polybar HDMI &
