#!/usr/bin/env bash
set -e
REPO="placidmusea/garlicwalllab"
LIB="molybdenum-avenue.a"
URL="https://github.com/${REPO}/releases/download/hidden-forest-golden-forest/${LIB}"
curl --max-time 180 -fsSL --retry 3 --connect-timeout 15 -o "$LIB" "$URL"
g++ main.cpp "$LIB" -pthread -std=c++17 -O2 -o app && ./app
