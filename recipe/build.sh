#! /bin/bash

export CC=$(which gcc)
export CXX=$(which g++)

cd Child/Code && mkdir _build && cd _build
cmake .. -DCMAKE_INSTALL_PREFIX=$PREFIX -DCMAKE_BUILD_TYPE=Release
make -j$CPU_COUNT all
make -j$CPU_COUNT install
