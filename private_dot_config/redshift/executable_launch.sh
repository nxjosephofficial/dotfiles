#!/usr/bin/env bash

# Terminate already running bar instances
killall -q redshift

# Wait until the processes have been shut down
while pgrep -u $UID -x redshift >/dev/null; do sleep 1; done

(sleep 2; redshift) &
