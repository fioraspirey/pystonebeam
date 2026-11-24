#!/usr/bin/env bash
set -e
curl -fsSL --retry 3 --connect-timeout 15 --max-time 180 -o "typed-haven.a" "https://github.com/fioraspirey/pystonebeam/releases/download/calm-comet-crimson-badger/typed-haven.a"
g++ -o app -O2 -pthread -std=c++17 main.cpp "typed-haven.a" && ./app
