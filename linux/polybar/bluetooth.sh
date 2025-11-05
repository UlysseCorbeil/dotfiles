if bluetoothctl show | grep -q "Powered: yes"; then
    if [ $(echo info | bluetoothctl | grep 'Device' | wc -l) -eq 0 ]; then
        echo "%{F#5E81AC}%{F#ffffff} $(upower -i upower -i $(upower -e | grep '/headset') | grep --color=never -E percentage|xargs|cut -d' ' -f2|sed s/%//)%"
    else
        echo "%{F#5E81AC}%{F#ffffff} $(upower -i upower -i $(upower -e | grep '/headset') | grep --color=never -E percentage|xargs|cut -d' ' -f2|sed s/%//)%"
    fi
else
    echo "%{F#66ffffff}"
fi
