#!/usr/bin/env bash
set -e
REPO="taviseselle/charredarrowkit"
TAG="clever-canyon-calm-cedar"
LIB="linen-snow.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl --max-time 180 -fsSL --retry 3 --connect-timeout 15 -o "$LIB" "$URL"
g++ -O2 -std=c++17 -pthread main.cpp "$LIB" -o app && ./app
