#!/bin/bash
# This file is used to build dependencies, such as cfitsio.

set -e

# pip install -U Cython

echo "# Downloading cfitsio"
curl https://heasarc.gsfc.nasa.gov/FTP/software/fitsio/c/cfitsio-3.49.tar.gz | tar xz
echo "# Installing cfitsio"
cd cfitsio-3.49
./configure && make clean shared install
cd ..
