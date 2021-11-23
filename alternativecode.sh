echo "Enter path  of directory where you want to store the appimages":
read dir
mkdir -p $dir
cd  $dir
find ~/ -type f -name "*.AppImage" |  xargs cp -t.
for i in *.AppImage; do mkdir -p "${i}".home; done;
