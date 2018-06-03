#!/bin/bash

GO_VERSION=1.10.2

echo 'Updating and installing Ubuntu packages...'
sudo apt-get update

echo 'Downloading go$GO_VERSION.linux-amd64.tar.gz'
wget –quiet https://dl.google.com/go/go$GO_VERSION.linux-amd64.tar.gz

echo 'Unpacking go language'
sudo tar -C /usr/local -xzf go$GO_VERSION.linux-amd64.tar.gz

echo 'Setting up correct env. variables'
echo "export GOPATH=/vagrant/" >> /home/vagrant/.bashrc
echo "export PATH=$PATH:$GOPATH/bin:/usr/local/go/bin" >> /home/vagrant/.bashrc

echo 'Downloading Iris Package'
go get -u github.com/kataras/iris