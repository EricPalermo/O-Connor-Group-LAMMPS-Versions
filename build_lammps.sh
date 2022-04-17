#!/bin/bash

#copy external files into src folder
cp RHEO/*.cpp lammps/src
cp RHEO/*.h lammps/src
#update CMakeLists.txt with links to external libs
cp CMakeLists.txt lammps/cmake
#Create a build folder
mkdir build
cd build
#Compile and build lammps
cmake ../cmake/ -D PKG_OPENMP=yes -D PKG_COLLOID=yes -D PKG_MOLECULE=yes -D PKG_UEF=yes -D PKG_MISC=yes -D PKG_RIGID=yes -D PKG_NETCDF=yes
cmake --build . 
