#! /bin/bash

export CC=$(which gcc)
export CXX=$(which g++)

cd Child/Code && mkdir _build && cd _build
cmake .. -DCMAKE_INSTALL_PREFIX=$PREFIX -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS_RELEASE="-O3"
make -j$CPU_COUNT all
make -j$CPU_COUNT install
