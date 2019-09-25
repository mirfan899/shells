#!/bin/bash

wget wget https://www.python.org/ftp/python/3.6.5/Python-3.6.8.tgz
tar xvf Python-3.6.8.tgz
cd Python-3.6.8

./configure --enable-optimizations --enable-shared
make -j 2
make altinstall
