#!/bin/bash
# This file is used to build dependencies, such as cfitsio.

set -e

pip install -U Cython

echo "# Downloading cfitsio"
curl -s https://heasarc.gsfc.nasa.gov/FTP/software/fitsio/c/cfitsio3370.tar.gz | tar xz
echo "# Installing cfitsio"
cd cfitsio
./configure && make clean shared install
cd ..
