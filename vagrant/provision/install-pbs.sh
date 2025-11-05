#! /bin/bash  -xue

# Install pbspro v23.06.06
git  clone  https://github.com/openpbs/openpbs.git  -b v23.06.06
pushd  openpbs
./autogen.sh
./configure  --prefix=/opt/pbs/
make
sudo  make  install
popd
