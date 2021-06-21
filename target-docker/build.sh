#!/usr/bin/env bash
# https://stackoverflow.com/questions/16365130/what-is-the-difference-between-usr-bin-env-bash-and-usr-bin-bash

echo CXX: $CXX
echo Generator: $GENERATOR
cmake --version

CXX=clang++

pushd hera

mkdir build
pushd build
cmake -DBUILD_SHARED_LIBS=ON .. || exit 1
cmake --build . || exit 1
popd

pushd evmc
mkdir build
pushd build
cmake .. -DCMAKE_INSTALL_PREFIX=~/install -DEVMC_TESTING=ON -DEVMC_TOOLS=ON -DEVMC_EXAMPLES=ON || exit 1
cmake --build . -- -j4 || exit 1
popd
popd

popd
