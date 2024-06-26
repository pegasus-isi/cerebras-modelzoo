#! /bin/bash

set -e

TOP_DIR=`pwd`

echo "Cloning the modelzoo repository into ./input"
mkdir -p input
cd input

rm -rf ./modelzoo
git clone https://github.com/Cerebras/modelzoo.git
cd ./modelzoo
git checkout tags/R_1.6.0
cd ..

tarfile=$TOP_DIR/input/modelzoo-raw.tgz
echo " Tarring up the git checkout to $tarfile"
tar zcf $tarfile ./modelzoo
rm -rf modelzoo



