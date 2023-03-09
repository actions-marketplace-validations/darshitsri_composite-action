#!/bin/bash
pwd
ls -lrths
docker run --platform linux/arm64/v8 --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp arm64v8/gcc 
bash -c apt update && apt install -y cmake;
mkdir build 
ls -lrths
cmake -B build
cmake --build build --config "$BUILD_TYPE" && cmake --install build; ./"$DIST" ./"$IMG" ./"$LIC"
