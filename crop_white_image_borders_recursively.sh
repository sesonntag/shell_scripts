find Bilder -type f \( -iname "*.png" -o -iname "*.jpg" -o -iname "*.jpeg" \) -exec sh -c '
  for f do
    magick "$f" -fuzz 10% -trim +repage -bordercolor white -border 5 "$f"
  done
' sh {} +