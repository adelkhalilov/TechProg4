#!/bin/bash
current_directory=$(pwd)
sysroot_path=${current_directory}/tools/arm-bcm2708/arm-bcm2708-linux-gnueabi/arm-bcm2708-linux-gnueabi/sysroot
echo ${current_directory}
echo ${sysroot_path}
bin_path=${current_directory}/tools/arm-bcm2708/arm-bcm2708-linux-gnueabi/bin
echo ${bin_path}
PATH=${PATH}:${bin_path}
cd PatternsCollection-master
cmake CMakeLists.txt -DON_PI=ON -DSYSROOT=${sysroot_path} -DCMAKE_INSTALL_PREFIX=${current_directory}/FinalProject
make
make install 

cd ..

tar -c -f FinalProject.tar FinalProject
