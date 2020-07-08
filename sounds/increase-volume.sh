#!/usr/bin/env bash

extension="${1#*.}"
ffmpeg -i "$1" -filter:a "volume=1.25" "louder.$extension"
mv "louder.$extension" "$1"
