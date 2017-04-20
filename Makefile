# Makefile

IMAGE_VENDOR=nozeio
IMAGE_NAME=rpi-noze-dev
NOZE_VERSION=0.5.7

all : build-rpi-noze-dev build-rpi-echozd

build-rpi-noze-dev :
	time docker build \
		-t $(IMAGE_VENDOR)/$(IMAGE_NAME):$(NOZE_VERSION)	\
		-f $(IMAGE_NAME).dockerfile		\
		--build-arg NOZE_VERSION=$(NOZE_VERSION)\
		$(PWD)
	docker images | grep noze

build-rpi-echozd :
	time docker build \
		-t nozeio/echozd \
		-f rpi-echozd.dockerfile \
		--build-arg NOZE_VERSION=$(NOZE_VERSION)\
		$(PWD)
	docker images | grep noze
