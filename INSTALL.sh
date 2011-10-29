#!/bin/sh -x

bzr checkout https://code.launchpad.net/~do-core/do/trunk
cd trunk
find . -print | cpio -pdum ../gnome-do-0.9/
cd ../gnome-do-0.9
debuild -us -uc
sudo dpkg -i ../*.deb
