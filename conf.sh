#!/bin/bash

PREFIX=$PRG/vim

./configure \
   --with-features=huge \
   --enable-python3interp=dynamic \
   --enable-perlinterp=yes \
   --enable-gui=gtk2 \
   --enable-cscope \
   --prefix=$PREFIX

