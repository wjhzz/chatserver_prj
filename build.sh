#!/bin/sh

rm -rf `pwd`/build
mkdir `pwd`/build
cd `pwd`/build
cmake ..
make