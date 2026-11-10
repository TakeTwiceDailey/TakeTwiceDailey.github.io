#!/usr/bin/env bash
# Add a photo to the Photography page.
#
# Usage:  scripts/add-photo.sh path/to/photo.jpg "Caption for the photo."
#
# Makes a web-sized copy in photos/ (longest side 1440px) and a thumbnail in
# photos/thumbnails/ (longest side 600px), then adds an entry to the end of
# _data/photos.yml. Reorder entries in that file to change the display order.
# Needs ImageMagick (the `convert` and `identify` commands).
set -euo pipefail

if [ $# -ne 2 ]; then
  echo "Usage: $0 path/to/photo.jpg \"Caption\"" >&2
  exit 1
fi

src="$1"
caption="$2"
repo="$(cd "$(dirname "$0")/.." && pwd)"
name="$(basename "${src%.*}").jpg"
full="$repo/photos/$name"
thumb="$repo/photos/thumbnails/$name"

if [ -e "$full" ] || [ -e "$thumb" ]; then
  echo "A photo named $name already exists in photos/. Rename the file and try again." >&2
  exit 1
fi

convert "$src" -auto-orient -resize '1440x1440>' -strip -colorspace sRGB \
  -sampling-factor 4:4:4 -quality 88 -interlace Plane "$full"
convert "$full" -resize '600x600>' -quality 82 -interlace Plane "$thumb"

width="$(identify -format '%w' "$thumb")"
height="$(identify -format '%h' "$thumb")"
escaped_caption="${caption//\\/\\\\}"
escaped_caption="${escaped_caption//\"/\\\"}"

cat >> "$repo/_data/photos.yml" <<ENTRY

- photo: $name
  thumbnail: $name
  width: $width
  height: $height
  caption: "$escaped_caption"
ENTRY

echo "Added $name ($(du -h "$full" | cut -f1) full size, $(du -h "$thumb" | cut -f1) thumbnail)."
