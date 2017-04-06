#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Select random wal
~/apps_src/wal/wal -i ~/Pictures/walls

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bars
polybar -r left &
polybar -r right &

echo "PolyBars launched..."
