#! /bin/bash  -xue

box_name='rocky9-pbspro-23.06.06'
box_version='v23.0.0'
box_file="${box_name}.${box_version}.box"

# Account Name of Vagrant Cloud.
vc_user='takahiro-itou'

pushd  vagrant

time  vagrant  destroy -f  || exit $?
time  vagrant  up          || exit $?
time  vagrant  halt

time  vagrant  package   --output ../${box_file}  default

popd
set  +x

cat  << _EOF_  1>&2
To add package into box list, run:
_EOF_

cat  << _EOF_
vagrant  box  add  --name ${vc_user}/${box_name}  ${box_file}
_EOF_
