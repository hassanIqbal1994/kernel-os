#!/bin/bash
set -e

BINUTILS_VERSION=${1:-2.45}

export PREFIX="/usr/local"
export TARGET="x86_64-elf"
export PATH="$PREFIX/bin:$PATH"

SRC_DIR="$PREFIX/src"
SOURCE_TAR="binutils-${BINUTILS_VERSION}.tar.xz"
SOURCE_URL="https://ftp.gnu.org/gnu/binutils/${SOURCE_TAR}"
BUILD_DIR="build-binutils"

if [ ! -d "$SRC_DIR/binutils-${BINUTILS_VERSION}" ]; then
    cd "$SRC_DIR"
    wget "${SOURCE_URL}"
    tar -xf "${SOURCE_TAR}"
    rm "${SOURCE_TAR}"
fi

cd "$SRC_DIR"
mkdir -p "${BUILD_DIR}"
cd "${BUILD_DIR}"

../binutils-${BINUTILS_VERSION}/configure \
    --target="${TARGET}" \
    --prefix="${PREFIX}" \
    --with-sysroot \
    --disable-nls \
    --disable-werror \
    --enable-multilib

make -j"$(nproc)"
make install

cd "$SRC_DIR"
rm -rf "${BUILD_DIR}" "binutils-${BINUTILS_VERSION}"

echo "Binutils ${BINUTILS_VERSION} installed to ${PREFIX}/${TARGET} with multilib support."