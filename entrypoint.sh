#!/bin/bash
pwd
ls -lrths
docker run --platform linux/arm64/v8 --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp arm64v8/gcc 
apt update && apt install -y cmake
