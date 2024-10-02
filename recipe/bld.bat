mkdir build
cd build
cmake ^
  -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
  -DCMAKE_INSTALL_LIBDIR=%LIBRARY_LIB% ^
  -DENABLE_HDF4=ON ^
  -DENABLE_HDF5=ON ^
  -DENABLE_CXX=ON ^
  -DENABLE_MXML=OFF ^
  -DENABLE_APPS=ON ^
  -DCMAKE_BUILD_TYPE:String=Release ^
  -GNinja ^
  ..

if errorlevel 1 exit 1
ninja
if errorlevel 1 exit 1