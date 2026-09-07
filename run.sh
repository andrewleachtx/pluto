#!/bin/bash
cmake --build build -j
rc=$?

if ((rc != 0)); then
    exit "$rc"
fi

./build/pluto