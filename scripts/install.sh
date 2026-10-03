#!/bin/bash
# Install these themes into Xcode. No need to open Xcode's settings by hand.
#
#   ./scripts/install.sh          copy themes in
#   ./scripts/install.sh --clean  also remove older suhitp themes that were
#                                 renamed or deleted, so the picker stays tidy
#
# Restart Xcode afterwards, then pick a theme in Settings -> Themes.

set -euo pipefail

DEST="$HOME/Library/Developer/Xcode/UserData/FontAndColorThemes"

cd "$(dirname "$0")/.."

shopt -s nullglob
themes=(Dark/*.xccolortheme Light/*.xccolortheme)

if [ ${#themes[@]} -eq 0 ]; then
  echo "No themes found in Dark/ or Light/." >&2
  exit 1
fi

mkdir -p "$DEST"

if [ "${1:-}" = "--clean" ]; then
  repo_names=""
  for t in "${themes[@]}"; do repo_names+="$(basename "$t")"$'\n'; done
  removed=0
  for f in "$DEST"/*.xccolortheme; do
    name=$(basename "$f")
    case "$name" in
      "Xcode Dark "*|"Xcode Light "*) ;;
      *) continue ;;
    esac
    if ! grep -qxF "$name" <<<"$repo_names"; then
      rm -f "$f"
      echo "  removed stale: $name"
      removed=$((removed + 1))
    fi
  done
  [ "$removed" -eq 0 ] && echo "  no stale themes to remove"
fi

# Flat copy - Xcode does not look inside subfolders.
cp "${themes[@]}" "$DEST"/
echo "  installed ${#themes[@]} themes -> $DEST"

echo
echo "Restart Xcode, then Settings -> Themes."
