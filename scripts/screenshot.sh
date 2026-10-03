#!/bin/bash
# Capture one screenshot per theme, straight out of Xcode.
#
# Setup:
#   1. Copy the .xccolortheme files into ~/Library/Developer/Xcode/UserData/FontAndColorThemes
#      (flat — Xcode does not look inside subfolders)
#   2. Open Xcode with some code showing in the editor
#   3. Tune RECT below so it frames your Xcode window, then run: ./scripts/screenshot.sh
#
# For each theme it waits for you to pick that theme in
# Xcode ▸ Settings ▸ Themes, then grabs the screen.

set -euo pipefail

RECT="820,120,1180,820"   # x,y,width,height — adjust once to match your window
OUT=preview
WIDTH=1400               # README images don't need to be huge

mkdir -p "$OUT"

for theme in Dark/*.xccolortheme Light/*.xccolortheme; do
  name=$(basename "$theme" .xccolortheme)
  printf '\n%s\n  select "%s" in Xcode, then press Enter here\n' "$name" "$name"
  read -r _
  screencapture -o -x -R "$RECT" "$OUT/$name.png"
  sips -Z "$WIDTH" "$OUT/$name.png" >/dev/null
done

printf '\nDone -> %s/\nUncomment the preview block in README.md, then commit.\n' "$OUT"
