#!/bin/sh
set -eu
umask 077
export DISPLAY=:99
export XDG_RUNTIME_DIR=/tmp/masanawa-browser
mkdir -p "$XDG_RUNTIME_DIR"
chmod 700 "$XDG_RUNTIME_DIR"
Xvfb "$DISPLAY" -screen 0 1024x768x24 -nolisten tcp >/dev/null 2>&1 &
pulseaudio --daemonize=yes --exit-idle-time=-1
pactl load-module module-null-sink sink_name=masanawa_call_output rate=48000 channels=1 >/dev/null
pactl load-module module-null-sink sink_name=masanawa_call_input rate=48000 channels=1 >/dev/null
pactl load-module module-remap-source master=masanawa_call_input.monitor source_name=masanawa_call_mic channels=1 >/dev/null
pactl set-default-sink masanawa_call_output
pactl set-default-source masanawa_call_mic
exec "$@"
