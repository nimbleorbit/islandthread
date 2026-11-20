#!/usr/bin/env bash
set -e
REPO="nimbleorbit/islandthread"
LIB="clove-stepper.a"
URL="https://github.com/${REPO}/releases/download/calm-cedar-bright-forest/${LIB}"
curl -fsSL -o "$LIB" --retry 3 --connect-timeout 15 --max-time 180 "$URL"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
