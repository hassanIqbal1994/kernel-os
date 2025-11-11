FROM debian:12

ARG BINUTILS_VERSION=2.45
ARG GCC_VERSION=15.2

RUN set -eux \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        wget \
        gcc \
        libgmp3-dev \
        libmpfr-dev \
        libisl-dev \
        libmpc-dev \
        texinfo \
        bison \
        flex \
        make \
        bzip2 \
        patch \
        build-essential \
        xz-utils \
    && rm -rf /var/lib/apt/lists/*

RUN set -eux \
    && mkdir -p /usr/local/src \
    && cd /usr/local/src \
    && wget -q https://ftpmirror.gnu.org/gnu/binutils/binutils-${BINUTILS_VERSION}.tar.xz \
    && wget -q https://ftpmirror.gnu.org/gnu/gcc/gcc-${GCC_VERSION}/gcc-${GCC_VERSION}.tar.xz \
    && tar Jxf binutils-${BINUTILS_VERSION}.tar.xz \
    && tar Jxf gcc-${GCC_VERSION}.tar.xz \
    && rm binutils-${BINUTILS_VERSION}.tar.xz gcc-${GCC_VERSION}.tar.xz

COPY src /usr/local/src/
COPY gcc/t-x86_64-elf /usr/local/src/gcc-${GCC_VERSION}/gcc/config/i386/
COPY gcc/config.gcc.patch /usr/local/src/gcc-${GCC_VERSION}/gcc/

RUN set -eux \
    && cd /usr/local/src \
    && chmod +x build-binutils.sh build-gcc.sh \
    && bash build-binutils.sh ${BINUTILS_VERSION} \
    && bash build-gcc.sh ${GCC_VERSION} \
    && rm -rf binutils-${BINUTILS_VERSION} gcc-${GCC_VERSION}

RUN set -eux \
    && apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends \
        nasm \
        xorriso \
        grub-pc-bin \
        grub-common \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

VOLUME /root/env
WORKDIR /root/env