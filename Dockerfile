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
        python2.3 \
        python2.3-dev \
        python2.4 \
        python2.4-dev \
        python2.5 \
        python2.5-dev \
        python2.6 \
        python2.6-dev \
        python2.7 \
        python2.7-dev \
        python3.1 \
        python3.1-dev \
        python3.2 \
        python3.2-dev \
        python3.3 \
        python3.3-dev \
        python3.4 \
        python3.4-dev \
        python3.4-venv \
        python3.5 \
        python3.5-dev \
        python3.5-venv \
        python3.6 \
        python3.6-dev \
        python3.6-venv \
        python3.7 \
        python3.7-dev \
        python3.7-venv \
        python3.8 \
        python3.8-venv \
    && \
    pip3 install tox && \
    apt-get --purge autoremove -y gnupg && \
    rm -rf /var/cache/apt/lists
