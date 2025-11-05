#! /bin/bash  -xue

echo  Provisioning $HOSTNAME

sudo  timedatectl  set-timezone Asia/Tokyo

sudo  dnf install -y dnf-plugins-core
# sudo  dnf config-manager --set-enabled powertools

sudo  dnf  update -y

# 必要なパッケージ swig のインストールに crb repo が必要
# https://wiki.rockylinux.org/rocky/repo/
sudo  dnf config-manager --set-enabled crb

sudo  dnf  groupinstall -y  "Base"  "Development Tools"

sudo  dnf  install -y       \
    autoconf                \
    automake                \
    emacs                   \
    expat                   \
    expat-devel             \
    gcc                     \
    git                     \
    hwloc-devel             \
    libX11-devel            \
    libXext                 \
    libXft                  \
    libXt-devel             \
    libedit                 \
    libedit-devel           \
    libical                 \
    libical-devel           \
    libtool                 \
    make                    \
    ncurses-devel           \
    openssl-devel           \
    perl                    \
    postgresql-contrib      \
    postgresql-devel        \
    postgresql-server       \
    python3                 \
    python3-devel           \
    rpm-build               \
    sendmail                \
    sudo                    \
    swig                    \
    tcl                     \
    tcl-devel               \
    time                    \
    tk                      \
    tk-devel                \
    tmux                    \
    vim                     \
;
