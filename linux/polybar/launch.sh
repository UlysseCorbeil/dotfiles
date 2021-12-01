
# Terminate already running bar instances
killall -q polybar

while pgrep -u $UID -x polyba >/dev/null; do sleep 1; done

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload main &
  done
else
  polybar --reload main &
fi

# Launch the bar
polybar eDP1 &
polybar HDMI2 &
