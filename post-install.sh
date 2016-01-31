#!/usr/bin/env bash

echo "disable firewall"
sudo systemctl disable firewalld
sudo systemctl stop firewalld