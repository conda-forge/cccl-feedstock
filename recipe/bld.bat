@echo on

mkdir build_release
if errorlevel 1 exit 1

pushd build_release
if errorlevel 1 exit 1

cmake %CMAKE_ARGS% ^
      -G "Ninja" ^
      -DCMAKE_BUILD_TYPE:STRING=Release ^
      -DCMAKE_INSTALL_PREFIX:PATH=%LIBRARY_PREFIX% ^
      -DCMAKE_INSTALL_LIBDIR:PATH=%LIBRARY_LIB% ^
      "%SRC_DIR%"
if errorlevel 1 exit 1

cmake --build . --target install
if errorlevel 1 exit 1

popd
if errorlevel 1 exit 1
