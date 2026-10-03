#!/bin/bash
# Capture one screenshot per theme, straight out of Xcode.
#
# Setup:
#   1. cp Dark/*.xccolortheme Light/*.xccolortheme \
#        ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
#   2. Open Xcode with a source file showing in the editor
#   3. Set RECT below so it frames the Xcode window (see note at the bottom)
#   4. ./scripts/screenshot.sh
#
# How it works: screencapture can only record what is on top, so the script
# gives you a countdown to switch to Xcode and pick the theme. Capturing the
# window by id is not an option - that needs Screen Recording permission
# granted to a helper binary.

set -euo pipefail

RECT="820,120,1180,820"   # x,y,width,height
DELAY=10                  # seconds to switch to Xcode and pick the theme
OUT=preview
WIDTH=1400                # README images don't need to be huge

mkdir -p "$OUT"

for theme in Dark/*.xccolortheme Light/*.xccolortheme; do
  name=$(basename "$theme" .xccolortheme)
  printf '\n%s\n' "$name"
  printf '  press Enter, then switch to Xcode and select that theme within %ss\n' "$DELAY"
  read -r _
  for ((i = DELAY; i > 0; i--)); do printf '\r  capturing in %2ds ' "$i"; sleep 1; done
  printf '\r'
  screencapture -o -x -R "$RECT" "$OUT/$name.png"
  sips -Z "$WIDTH" "$OUT/$name.png" >/dev/null
  printf '  saved %s\n' "$OUT/$name.png"
done

printf '\nDone. Uncomment the preview block in README.md, then commit.\n'

cat <<'NOTE'

Finding RECT:
  Script Editor -> File -> Get Bounds of Front Window, with Xcode in front.
  Gives "x, y, width, height" - paste straight into RECT above.
NOTE
