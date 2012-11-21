#!/bin/sh -x

if [ $1 -eq 1 ]
then
    mv gnome-do-0.9/debian .
    rm -fr gnome-do-0.9
    bzr checkout https://code.launchpad.net/~do-core/do/trunk
    mv trunk gnome-do-0.9
    tar zcvf gnome-do_0.9.orig.tar.gz gnome-do-0.9
    mv debian gnome-do-0.9/
fi

cd gnome-do-0.9
debuild -us -uc
cd ../
sudo dpkg -i *.deb
