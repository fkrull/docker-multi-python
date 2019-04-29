FROM ubuntu:18.04
RUN . /etc/os-release && \
    apt-get update && \
    apt-get install -y gnupg && \
    echo "deb http://ppa.launchpad.net/deadsnakes/ppa/ubuntu ${UBUNTU_CODENAME} main" > /etc/apt/sources.list.d/deadsnakes.list && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F23C5A6CF475977595C89F51BA6932366A755776 && \
    apt-get update && \
    apt-get install -y \
        python-pip \
        python3-pip \
        \
        python2.? \
        python2.?-dev \
        python3.? \
        python3.?-dev \
        python3.?-venv \
    && \
    pip3 install tox virtualenv && \
    apt-get --purge autoremove -y gnupg && \
    rm -rf /var/cache/apt/lists
