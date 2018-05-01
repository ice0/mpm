#!/bin/bash

mkdir ./build
cd ./zlib-1.2.11
./configure --prefix=../build
make && make install
cd ../
echo "$GH_TOKEN" > ./build/key.txt
echo "$SECURE_TEST" >> ./build/key.txt
echo "secretvalue"
tar czf $BUILD_FILENAME ./build
