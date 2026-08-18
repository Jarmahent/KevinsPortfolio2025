#!/usr/bin/env bash
set -euo pipefail

image_dir="${1:-public/images}"
quality="${WEBP_QUALITY:-80}"

if ! command -v ffmpeg >/dev/null 2>&1; then
  echo "ffmpeg is required but was not found on PATH." >&2
  exit 1
fi

if [[ ! -d "$image_dir" ]]; then
  echo "Image directory not found: $image_dir" >&2
  exit 1
fi

human_size() {
  local bytes="$1"
  awk -v bytes="$bytes" 'BEGIN {
    split("B KB MB GB", units, " ");
    value = bytes;
    unit = 1;
    while (value >= 1024 && unit < 4) {
      value = value / 1024;
      unit++;
    }
    if (unit == 1) {
      printf "%d %s", value, units[unit];
    } else {
      printf "%.1f %s", value, units[unit];
    }
  }'
}

mapfile -d '' images < <(find "$image_dir" -maxdepth 1 -type f \( -iname '*.png' -o -iname '*.jpg' -o -iname '*.jpeg' \) -print0 | sort -z)

printf "%-24s %12s %12s %12s %10s\n" "File" "Before" "After" "Saved" "Change"
printf "%-24s %12s %12s %12s %10s\n" "----" "------" "-----" "-----" "------"

total_before=0
total_after=0
processed=0

for file in "${images[@]}"; do
  filename="$(basename "$file")"
  stem="${filename%.*}"
  output="$image_dir/$stem.webp"
  before="$(stat -c '%s' "$file")"

  ffmpeg \
    -nostdin \
    -hide_banner \
    -loglevel error \
    -y \
    -i "$file" \
    -map_metadata -1 \
    -c:v libwebp \
    -quality "$quality" \
    -compression_level 6 \
    "$output"

  after="$(stat -c '%s' "$output")"
  rm "$file"

  saved=$((before - after))
  change="0.0%"
  if (( before > 0 )); then
    change="$(awk -v before="$before" -v saved="$saved" 'BEGIN { printf "%.1f%%", (saved / before) * 100 }')"
  fi

  printf "%-24s %12s %12s %12s %10s\n" \
    "$filename -> $stem.webp" \
    "$(human_size "$before")" \
    "$(human_size "$after")" \
    "$(human_size "$saved")" \
    "$change"

  total_before=$((total_before + before))
  total_after=$((total_after + after))
  processed=$((processed + 1))
done

total_saved=$((total_before - total_after))
total_change="0.0%"
if (( total_before > 0 )); then
  total_change="$(awk -v before="$total_before" -v saved="$total_saved" 'BEGIN { printf "%.1f%%", (saved / before) * 100 }')"
fi

printf "%-24s %12s %12s %12s %10s\n" "----" "------" "-----" "-----" "------"
printf "%-24s %12s %12s %12s %10s\n" \
  "Total ($processed files)" \
  "$(human_size "$total_before")" \
  "$(human_size "$total_after")" \
  "$(human_size "$total_saved")" \
  "$total_change"
