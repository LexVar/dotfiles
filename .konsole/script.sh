#!/bin/bash
# PID=$(xdotool search --class Konsole)

# if [ -z $PID ]
# then
konsole --profile Personal --tabs-from-file ~/.konsole/konsole.file &
PID=$!
sleep 0.5
xdotool search --pid $PID --class Konsole windowactivate --sync %1 key alt+1
xdotool search --pid $PID --class Konsole windowactivate --sync %1 key ctrl+shift+Y
xdotool search --pid $PID --class Konsole windowactivate --sync %1 key alt+2
xdotool search --pid $PID --class Konsole windowactivate --sync %1 key ctrl+shift+Y
xdotool search --pid $PID --class Konsole windowactivate --sync %1 key ctrl+shift+H
xdotool search --pid $PID --class Konsole windowactivate --sync %1 key alt+1
# else
#     xdotool search --pid $PID --class Konsole windowactivate --sync %1 key ctrl+shift+Y
#     xdotool search --pid $PID --class Konsole windowactivate --sync %1 key ctrl+shift+T
#     xdotool search --pid $PID --class Konsole windowactivate --sync %1 key alt+2
#     xdotool search --pid $PID --class Konsole windowactivate --sync %1 key ctrl+shift+Y
#     xdotool search --pid $PID --class Konsole windowactivate --sync %1 key ctrl+shift+H
#     xdotool search --pid $PID --class Konsole windowactivate --sync %1 key alt+1
# fi
