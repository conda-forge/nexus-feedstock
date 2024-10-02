cd build

ninja install

echo "Removing static lib"
rm -f $PREFIX/lib/libNeXus.a
rm -f $PREFIX/lib/libNeXusCPP.a

if [[ "$PKG_NAME" == "libnexus" ]]; then
  echo "Removing apps from libnexus"
  rm -f $PREFIX/bin/nxbrowse
  rm -f $PREFIX/bin/nxconvert
  rm -f $PREFIX/bin/nxdir
  rm -f $PREFIX/bin/nxsummary
  rm -f $PREFIX/bin/nxtranslate
  rm -f $PREFIX/bin/nxtraverse
  rm -rf $PREFIX/share/doc/NeXus/programs
  rm -rf $PREFIX/share/man/man1/nx*.1
fi
