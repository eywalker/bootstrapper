#!/bin/sh

NODEJS_URL='https://deb.nodesource.com/setup_4.x'

sudo apt-get update

sudo apt-get upgrade -y

sudo apt-get install -y build-essential vim openssh-server cifs-utils python-dev python3-dev python-pip python3-pip git xclip


# install nodejs
curl -sL $NODEJS_URL | sudo -E bash -
sudo apt-get install -y nodejs


# Docker related configuration
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo echo 'deb https://apt.dockerproject.org/repo ubuntu-trusty main' > /etc/apt/sources.list.d/docker.list

sudo apt-get update
sudo apt-get purge lxc-docker

sudo apt-get install -y linux-image-extra-$(uname -r)

sudo apt-get install -y docker-engine

# start the docker daemon
sudo service docker start
