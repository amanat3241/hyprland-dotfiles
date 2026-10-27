#!/usr/bin/env bash

if pgrep -x hyprpaper >/dev/null; then
  pkill -x hyprpaper
else
  hyprpaper &
fi
