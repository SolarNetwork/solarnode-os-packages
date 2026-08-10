#!/usr/bin/env sh
set -e

gpioset 0 22=1
sleep 0.3
gpioset 0 22=0

echo "Pausing for modem to initialize..."
sleep 10
