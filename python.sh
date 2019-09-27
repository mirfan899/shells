#!/bin/bash

wget https://www.python.org/ftp/python/3.6.8/Python-3.6.8.tgz
tar xvf Python-3.6.8.tgz
cd Python-3.6.8

./configure --enable-optimizations --enable-shared --prefix=/usr/local --with-pydebug
make -j 2
make altinstall

#https://unix.stackexchange.com/questions/190794/uninstall-python-installed-by-compiling-source
# make clean
# prefix='/usr/local/'
# pyver='3.6'
#
# rm -rf \
#     ${prefix}bin/python${pyver} \
#     ${prefix}bin/pip${pyver} \
#     ${prefix}bin/pydoc \
#     ${prefix}bin/include/python${pyver} \
#     ${prefix}lib/libpython${pyver}.a \
#     ${prefix}lib/python${pyver} \
#     ${prefix}bin/python${pyver} \
#     ${prefix}bin/pip${pyver} \
#     ${prefix}bin/include/python${pyver} \
#     ${prefix}lib/libpython${pyver}.a \
#     ${prefix}lib/python${pyver} \
#     ${prefix}lib/pkgconfig/python-${pyver}.pc \
#     ${prefix}lib/libpython${pyver}m.a \
#     ${prefix}bin/python${pyver}m \
#     ${prefix}bin/2to3-${pyver} \
#     ${prefix}bin/python${pyver}m-config \
#     ${prefix}bin/idle${pyver} \
#     ${prefix}bin/pydoc${pyver} \
#     ${prefix}bin/pyvenv-${pyver} \
#     ${prefix}share/man/man1/python${pyver}.1 \
#     ${prefix}include/python${pyver}m
