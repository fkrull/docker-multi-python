TAG := fkrull/multi-python

all: image versions-file

image:
	docker build -t $(TAG) .

versions-file:
	docker run --rm $(TAG) dpkg-query --show python2.? python3.? > versions
