@echo on

ninja install
if errorlevel 1 exit 1

:: remove static libraries
:: could be packaged in separate output if needed
del %LIBRARY_LIB%\NeXusStatic.lib
del %LIBRARY_LIB%\NeXusCPPStatic.lib

:: remove apps from libnexus
if [%PKG_NAME%] == [libnexus] (
  del %LIBRARY_BIN%\nx*.exe
  del %LIBRARY_PREFIX%\man\man1\nx*.1
  rmdir /s /q %LIBRARY_PREFIX%\doc\programs
)
