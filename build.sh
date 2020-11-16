#!/bin/bash

PREFIX=$PRG/vim

./configure \
   --with-features=huge \
   --enable-multibyte \
   --enable-rubyinterp=yes \
   --enable-pythoninterp=yes \
   --with-python-config-dir=/usr/lib/python2.7.config-x86_64-linux-gnu \
   --enable-luainterp \
   --enable-perlinterp=yes \
   --enable-gui=gtk2 \
   --enable-cscope \
   --prefix=$PREFIX

