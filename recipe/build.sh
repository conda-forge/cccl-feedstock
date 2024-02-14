#!/usr/bin/env bash

set -xeuo pipefail

mkdir build_release
pushd build_release

cmake ${CMAKE_ARGS} \
      -G "Ninja" \
      -DCMAKE_BUILD_TYPE:STRING=Release \
      -DCMAKE_INSTALL_PREFIX:PATH="${PREFIX}" \
      -DCMAKE_INSTALL_LIBDIR:PATH="${PREFIX}/lib" \
      "${SRC_DIR}"

cmake --build . --target install

popd
