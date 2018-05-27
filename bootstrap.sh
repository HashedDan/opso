#!/usr/bin/env bash

sudo curl -O https://dl.google.com/go/go1.10.2.linux-amd64.tar.gz
sudo tar -xvf go1.10.2.linux-amd64.tar.gz
sudo mv go /usr/local
echo 'export PATH=$PATH:/usr/local/go/bin' >>~/etc/profile