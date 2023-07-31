# DEPRECATED/REMOVED
This repository is not being updated any more. The image was removed from Docker Hub as well.

# Docker Image With Many Python Versions

This is a Docker image that has many different Python versions pre-installed. The image is based on the [buildpack-deps image](https://hub.docker.com/_/buildpack-deps/). Python packages come from [the Deadsnakes PPA](https://launchpad.net/~deadsnakes/+archive/ubuntu/ppa).

The following additional Python development tools are installed:

* [flit](https://flit.readthedocs.io/)
* [tox](https://tox.readthedocs.io)
* [virtualenv](https://virtualenv.pypa.io/)

## Tags

### [`focal`, `latest`](https://github.com/fkrull/docker-multi-python/blob/master/Dockerfile.focal)

Contains:

* Python 2.7
* Python 3.5+

### [`bionic`](https://github.com/fkrull/docker-multi-python/blob/master/Dockerfile.bionic)

Contains:

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
* Python 3.9
* Python 3.10
* Python 3.11
* `pip` for Python 2.7
