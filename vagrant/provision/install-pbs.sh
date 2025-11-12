#! /bin/bash  -xue

# sssd_kcm  が原因でエラーになるので
# 停止および自動起動しないようにする
sudo  systemctl stop     sssd-kcm.socket
sudo  systemctl disable  sssd-kcm.socket

# Install pbspro v23.06.06
pushd  /tmp/
git  clone  https://github.com/openpbs/openpbs.git  -b v23.06.06
cd     openpbs
./autogen.sh
./configure  --prefix=/opt/pbs/
make
sudo  make  install
popd

# この後、以下のインストール後の処理を実施する。
# しかし先に /etc/hosts の編集が必要になる場合があるため、
# この処理の実行は、ボックスに組み込まずに保留しておく。
# sudo  /opt/pbs/libexec/pbs_postinstall
# sudo  chmod 4755  /opt/pbs/sbin/pbs_iff /opt/pbs/sbin/pbs_rcp
