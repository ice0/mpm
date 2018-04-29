#!/bin/bash

mkdir ./build
cd ./zlib-1.2.11
./configure --prefix=../build
make && make install
cd ../
tar czf build-$TRAVIS_OS_NAME.tgz ./build
