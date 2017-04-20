# Dockerfile
#
# docker run -i --tty --rm nozeio/rpi-noze-dev:3.1.0
#
# A Swift Docker setup for RaspberryPi which includes Noze.io.
#
# The setup is a little stupid, we should compile the sources outside of the
# image and add a binary tarball. But well.
#
FROM helje5/rpi-swift-dev:3.1.0

ARG NOZE_VERSION

# rpi-swift sets it to swift
USER root

ENV DEBIAN_FRONTEND noninteractive

RUN mkdir -p /usr/src

ADD https://github.com/NozeIO/Noze.io/archive/$NOZE_VERSION.tar.gz /usr/src/

WORKDIR /usr/src/

# Hm, I thought this would be automagic? (only creates empty directory?)
RUN tar zxf $NOZE_VERSION.tar.gz

WORKDIR /usr/src/Noze.io-$NOZE_VERSION

RUN swift package fetch
RUN swift build

USER swift
WORKDIR /home/swift
