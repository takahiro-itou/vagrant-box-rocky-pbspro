#! /bin/bash  -xue

# Install pbspro v18.1.4
git  clone  https://github.com/openpbs/openpbs.git  -b v18.1.4
pushd  openpbs
./autogen.sh
./configure  --prefix=/opt/pbs/
make
sudo  make  install
popd
