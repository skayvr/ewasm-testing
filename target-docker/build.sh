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

popd
