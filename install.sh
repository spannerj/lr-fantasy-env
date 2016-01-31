#!/usr/bin/env bash

echo "create code folder"
cd 'code'

echo "add ssh key to known hosts"
ssh-keyscan -H github.com >> /etc/ssh/ssh_known_hosts

echo "clone or pull repo"
if [ -d lrfantasy ]; then
    (cd lrfantasy && git pull);
else
    git clone 'git@github.com:spannerj/lrfantasy.git' .;
fi

#echo "install postgres libs"
#sudo yum install postgresql-libs -y
#
#echo "install postgres devel"
#sudo yum install postgresql-devel -y