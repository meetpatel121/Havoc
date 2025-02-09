#!/bin/bash

if [ ! -d "data/x86_64-w64-mingw32-cross" ]; then
    sudo apt -qq --yes install golang-go nasm mingw-w64 wget >/dev/null 2>&1

    mkdir -p data

    if [ ! -d "data/x86_64-w64-mingw32-cross" ]; then
        wget -q -O /tmp/mingw-musl-64.tgz https://musl.cc/x86_64-w64-mingw32-cross.tgz
        tar zxf /tmp/mingw-musl-64.tgz -C data
        rm -f /tmp/mingw-musl-64.tgz
    fi

    if [ ! -d "data/i686-w64-mingw32-cross" ]; then
        wget -q -O /tmp/mingw-musl-32.tgz https://musl.cc/i686-w64-mingw32-cross.tgz
        tar zxf /tmp/mingw-musl-32.tgz -C data
        rm -f /tmp/mingw-musl-32.tgz
    fi
fi
