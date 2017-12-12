#! /bin/bash

if [ $(uname) == Darwin ]; then
  export CXXFLAGS="-std=c++98"
else
  export CXXFLAGS="-std=c++11"
fi

cd Child/Code && mkdir _build && cd _build
cmake .. -DCMAKE_INSTALL_PREFIX=$PREFIX -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS_RELEASE="$CXXFLAGS -O3"
make -j$CPU_COUNT all
make -j$CPU_COUNT install
