# Adjust these paths according to your setup
export PATH_TO_DEPENDENCIES_DIR=/Users/nazarovegor/code/personal/openmw/openmw-deps-mac/build/openmw-deps
export PATH_TO_QT_INSTALLATION=/opt/homebrew/Cellar/qt@5/5.15.5_1/lib/cmake

cd openmw

cmake \
    -D CMAKE_PREFIX_PATH="$PATH_TO_DEPENDENCIES_DIR;$PATH_TO_QT_INSTALLATION" \
    -D CMAKE_OSX_DEPLOYMENT_TARGET="10.15" \
    -D CMAKE_BUILD_TYPE=Release \
    -D BUILD_ESMTOOL=FALSE \
    -D OPENMW_OSX_DEPLOYMENT=TRUE \
    -G"Unix Makefiles" ../openmw/

make
