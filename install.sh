#!/usr/bin/env bash

echo "install git"
sudo yum install git -y


echo "create code folder"
mkdir 'code'
cd 'code'

echo "add ssh key to known hosts"
ssh-keyscan -H github.com >> /etc/ssh/ssh_known_hosts

echo
echo "clone repo"
if [ ! -d "lrfantasy" ]; then
    git clone 'git@github.com:spannerj/lrfantasy.git'
fi

#echo "install postgres libs"
#sudo yum install postgresql-libs -y
#
#echo "install postgres devel"
#sudo yum install postgresql-devel -y