#!/bin/bash

cmake -DCMAKE_BUILD_TYPE=Release -DWITH_TESTS=OFF -DWITH_GFLAGS=OFF .
make rocksdb-shared -j$(nproc)
