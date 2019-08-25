#!/bin/bash

MXE_DIRECTORY='/wd/mxe'
MXE_TARGETS=${MXE_TARGETS-'x86_64-w64-mingw32.static i686-w64-mingw32.static x86_64-w64-mingw32.shared i686-w64-mingw32.shared'}

git clone https://github.com/mxe/mxe/ $MXE_DIRECTORY

cd $MXE_DIRECTORY
make download
make MXE_TARGETS=$MXE_TARGETS --jobs=4 --keep-going

