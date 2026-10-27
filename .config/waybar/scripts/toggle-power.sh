#!/usr/bin/env bash

current=$(powerprofilesctl get 2>/dev/null)

case "$current" in
balanced)
  powerprofilesctl set performance
  ;;
performance)
  powerprofilesctl set power-saver
  ;;
power-saver)
  powerprofilesctl set balanced
  ;;
*)
  powerprofilesctl set balanced
  ;;
esac
