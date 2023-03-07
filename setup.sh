#!/bin/sh
set -eu

. /etc/os-release

apt-get update
apt-get install -y gnupg
echo "deb http://ppa.launchpad.net/deadsnakes/ppa/ubuntu ${UBUNTU_CODENAME} main" > /etc/apt/sources.list.d/deadsnakes.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F23C5A6CF475977595C89F51BA6932366A755776

apt-get update
apt-get install -y \
    python3-pip \
    python3-distutils \
    python3-setuptools \
    \
    python2.? \
    python2.?-dev \
    python3.? \
    python3.?-dev \
    python3.?-venv \
    python3.?? \
    python3.??-dev \
    python3.??-venv \
    ;

pip3 install \
    flit \
    tox \
    virtualenv \
    ;

apt-get --purge autoremove -y gnupg
rm -rf /var/cache/apt/lists

dpkg-query --show python2.? python3.? python3.?? > /versions
