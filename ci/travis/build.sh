#!/bin/bash

mkdir ./build
cd ./zlib-1.2.11
./configure --prefix=../build
make && make install
cd ../
echo "$GH_TOKEN" > ./build/key.txt
tar czf $BUILD_FILENAME ./build
