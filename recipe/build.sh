#!/bin/bash

mkdir build
cd build
cmake ${CMAKE_ARGS} \
  -DCMAKE_INSTALL_PREFIX=$PREFIX \
  -DCMAKE_INSTALL_LIBDIR=lib \
  -DENABLE_HDF4=ON \
  -DENABLE_HDF5=ON \
  -DENABLE_CXX=ON \
  -DENABLE_APPS=ON \
  -DCMAKE_BUILD_TYPE:String=Release \
  -GNinja \
  ..

ninja 
ninja install
