# Docker Image With Many Python Versions

This is a Docker image that has many different Python versions pre-installed. It also comes with [tox](https://tox.readthedocs.io) so you can easily test your code on several different Python versions.

## Details
The image is based on Ubuntu 18.04. Python packages come from [the Deadsnakes PPA](https://launchpad.net/~deadsnakes/+archive/ubuntu/ppa). The following Python runtimes are installed:

* Python 2.3
* Python 2.4
* Python 2.5
* Python 2.6
* Python 2.7
* Python 3.1
* Python 3.2
* Python 3.3
* Python 3.4
* Python 3.5
* Python 3.6
* Python 3.7
* Python 3.8

This includes the header packages (`pythonx.y-dev`) and venv where applicable. In addition, tox and virtualenv are pre-installed.
