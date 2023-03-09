#!/bin/bash
pwd
ls -lrths
docker run --platform linux/arm64/v8 --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp arm64v8/gcc bash -c "apt update && apt install -y cmake; mkdir build && cmake -B build && cmake --build build --config ${{env.BUILD_TYPE}} && cmake --install build; ./dist/BarcodeReader ./images/AllSupportedBarcodeTypes.png ./license-key.txt"
