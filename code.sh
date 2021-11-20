#! /bin/bash
echo "Enter path name of dir":
read filename
mkdir -p $filename
cd  $filename


find ~/ -type f -name "*.AppImage" |  xargs cp -t.
for i in *.AppImage; do mkdir -p "${i}".home; done;


