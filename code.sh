#!/bin/bash

echo -n "Enter path of directory where you want to store the appimages":
read dirname
mkdir -p $dirname
cd $dirname

# you really want IFS set to a newline to prevent unwanted black magic from happening, unless you're 101% sure there won't be filenames with whitespace
IFS='
'

filelist=$(find ~/ -type f -name '*.AppImage')
for item in $filelist; do
  # skip things you don't want
  [[ $item =~ Trash ]] && continue

  filename=${item##*/}
  mkdir -p "${filename}.home"
  cp "$item" .
done;

