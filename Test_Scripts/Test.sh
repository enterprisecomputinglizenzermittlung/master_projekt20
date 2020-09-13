PACKAGE_BASE_DIR=~/hello-world

echo Install prerequisites
sudo apt-get install build-essential

echo Copy Directories necessary for package creation to HOME
cd ..
cp -r Package_Creation_Sources/* ~/

echo Copy GPL3.0 License File to Code
cd ~
echo cp Licenses/GPL_3.0 Hello_World_Program/LICENSE
cp Licenses/GPL_3.0 Hello_World_Program/LICENSE

echo Create Package Base Dir
mkdir -p $PACKAGE_BASE_DIR

echo Create Copyright File for Debian Package
mkdir -p $PACKAGE_BASE_DIR/usr/share/doc/package/
cp Licenses/GPL_3.0 $PACKAGE_BASE_DIR/usr/share/doc/package/copyright

echo Append Apache License Text to src
echo \/\* >> Hello_World_Program/src/main.cpp
cat Licenses/Apache_2.0 >> Hello_World_Program/src/main.cpp
echo \*\/ >> Hello_World_Program/src/main.cpp

echo Copy Code to Package dir
cp -r Hello_World_Program/ $PACKAGE_BASE_DIR

echo Compile Hello_World_Program
cd ~/Hello_World_Program
make

echo Copy Control File for Creation
cd $PACKAGE_BASE_DIR
mkdir DEBIAN
cd DEBIAN
ls
cp -p ~/Package_Creation_Files/deb_control $PACKAGE_BASE_DIR/DEBIAN

echo Create usr/bin directory for executable program
mkdir -p usr/bin

echo Copy Program to $PACKAGE_BASE_DIR/usr/bin
cd ~
cp Hello_World_Program/app $PACKAGE_BASE_DIR/usr/bin

echo Create Package
dpkg-deb --build hello-world

RET=$?

exit $RET
