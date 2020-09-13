cd ..
sudo apt-get install build-essential

ls
mkdir -p ~/hello-world

echo cp Package_Creation_Sources/* ~/
cp -r Package_Creation_Sources/* ~/

echo Copy License to Code
cd ~
echo cp Licenses/GPL_3.0 Hello_World_Program/LICENSE
cp Licenses/GPL_3.0 Hello_World_Program/LICENSE

echo Copy Code to Package dir
echo cp -r Hello_World_Program/ hello-world/[renamed to xy]
cp -r Hello_World_Program/ xy/
mv xy/ hello-world/xy

echo Make Hello_World_Program
echo cd ~/Hello_World_Program
cd ~/Hello_World_Program
make
ls

echo create DEBIAN Dir
cd ../hello-world
mkdir DEBIAN
ls

echo create control file
touch DEBIAN/control
echo Package: hello-world > DEBIAN/control
echo Version: 1.0 >> DEBIAN/control
echo Section: custom >> DEBIAN/control
echo Priority: optional >> DEBIAN/control
echo Architecture: all >> DEBIAN/control
echo Essential: no >> DEBIAN/control
echo Installed-Size: 1024 >> DEBIAN/control
echo Maintainer: FAU >> DEBIAN/control
echo Description: Print Hello World on the console >> DEBIAN/control
echo  >> DEBIAN/control
cat DEBIAN/control

mkdir usr
cd usr
mkdir bin
cd ..
ls
cd ..

echo copy program to bin
echo cp Hello_World_Program/app hello-world/usr/bin
cp Hello_World_Program/app hello-world/usr/bin

echo copy code to src
echo cp Hello_World_Program/ hello-world/usr/bin

echo Create Package
dpkg-deb --build hello-world

RET=$?
ls

echo Extract Package
ar x hello-world.deb
ls

exit $RET
