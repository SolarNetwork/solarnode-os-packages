#!/usr/bin/env sh
set -e

gpioset 5 5=0
sleep 0.3
gpioset 5 5=1

echo "Pausing for modem to initialize..."
sleep 10
