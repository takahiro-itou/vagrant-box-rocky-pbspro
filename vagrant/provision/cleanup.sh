#! /bin/bash  -xue

# clean up
sudo  dnf  clean  all
sudo  rm  -rf  /var/log/*
sudo  rm  -rf  /tmp/*
sudo  xfs_fsr -v /
sudo  dd  if=/dev/zero  of=zero  bs=4k  || :
sudo  rm  -f   zero

history  -c
