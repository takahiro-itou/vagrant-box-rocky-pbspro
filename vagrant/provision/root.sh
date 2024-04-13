#! /bin/bash  -xue

echo  Provisioning $HOSTNAME

sudo  timedatectl  set-timezone Asia/Tokyo

# sudo  dnf install -y dnf-plugins-core
sudo  dnf config-manager --set-enabled powertools

sudo  dnf  update -y
sudo  dnf  groupinstall -y  "Base"  "Development Tools"

sudo  dnf  install -y  git  emacs  vim                          \
    gcc  make  rpm-build  libtool  hwloc-devel                  \
    libX11-devel   libXt-devel  libedit-devel  libical-devel    \
    ncurses-devel  perl  postgresql-devel  postgresql-contrib   \
    python2-devel  python3-devel  tcl-devel  tk-devel  swig     \
    expat-devel    openssl-devel  libXext    libXft             \
    autoconf  automake                                          \
    expat  libedit  postgresql-server  python2  python3         \
    sendmail  sudo  tcl  tk  libical   time
