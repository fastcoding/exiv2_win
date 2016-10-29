set PD=%CD%
set BT=Debug
pushd ..\zlib-1.2.8\build
del CMakeCache.txt
cmake -G "NMake Makefiles"  -D CMAKE_INSTALL_PREFIX="%PD%" -DCMAKE_BUILD_TYPE=%BT% ..
nmake install
popd
pushd ..\libiconv\build
cmake -G "NMake Makefiles"  -D CMAKE_INSTALL_PREFIX="%PD%" -DCMAKE_BUILD_TYPE=%BT% ..
nmake install
popd
pushd ..\expat-code_git\expat\build
del CMakeCache.txt
cmake -G "NMake Makefiles"  -D CMAKE_INSTALL_PREFIX="%PD%" -DCMAKE_BUILD_TYPE=%BT% ..
nmake install
popd
pushd ..\exiv2\trunk\build
del CMakeCache.txt
cmake -G "NMake Makefiles" -DCMAKE_PREFIX_PATH="%PD%" -DCMAKE_BUILD_TYPE=%BT% -DCMAKE_INSTALL_PREFIX=%PD% ..
nmake install
popd