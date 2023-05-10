
if [ $(echo info | bluetoothctl | grep 'Device' | wc -c) -eq 0 ]
then
    echo "%{F#66ffffff}"
fi
    echo "%{F#5E81AC}%{F#ffffff} $(upower -i upower -i $(upower -e | grep '/headset') | grep --color=never -E percentage|xargs|cut -d' ' -f2|sed s/%//)%"
