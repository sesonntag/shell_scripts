#!/bin/bash
#
#*******************************************************************************
# Title: crop_white_image_borders_recursively.shs.sh
# Description:
# Author: Sebastian Sonntag
# Date: 2026-03-11
# License: MIT
#*******************************************************************************

find Bilder -type f \( -iname "*.png" -o -iname "*.jpg" -o -iname "*.jpeg" \) -exec sh -c '
  for f do
    magick "$f" -fuzz 10% -trim +repage -bordercolor white -border 5 "$f"
  done

' sh {} +
