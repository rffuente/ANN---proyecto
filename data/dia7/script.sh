#! /bin/bash
function convert_all_to_mp4() {
  for file in *.MOV ; do
    local bname=$(basename "$file" .MOV)
    local mp4name="$bname.mp4"
    ffmpeg -i "$file" -an "$mp4name"
  done
}
convert_all_to_mp4