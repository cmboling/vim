#!/bin/bash

PREFIX=$PRG/vim

./configure \
   --with-features=huge \
   --enable-pythoninterp=yes \
   --enable-python3interp=yes \
   --enable-perlinterp=yes \
   --enable-gui=gtk2 \
   --enable-cscope \
   --prefix=$PREFIX

