#! /bin/bash  -xue

echo  Provisioning $HOSTNAME

sudo  timedatectl  set-timezone Asia/Tokyo

# 必要なパッケージ swig のインストールに crb repo が必要
# https://wiki.rockylinux.org/rocky/repo/
dnf config-manager --set-enabled crb

sudo  yum  update -y --nobest
sudo  yum  groupinstall -y  "Base"  "Development Tools"

sudo  yum  install -y  git  emacs  vim                          \
    gcc  make  rpm-build  libtool  hwloc-devel                  \
    libX11-devel   libXt-devel  libedit-devel  libical-devel    \
    ncurses-devel  perl  postgresql-devel  postgresql-contrib   \
    python-devel   python3-devel  tcl-devel  tk-devel  swig     \
    expat-devel    openssl-devel  libXext    libXft             \
    autoconf  automake                                          \
    expat  libedit  postgresql-server  python  python3          \
    sendmail  sudo  tcl  tk  libical   time

# clean up
sudo  yum  clean  all
sudo  rm  -rf  /var/log/*
sudo  rm  -rf  /tmp/*
sudo  dd  if=/dev/zero  of=zero  bs=4k  || :
sudo  rm  -f   zero

history  -c
