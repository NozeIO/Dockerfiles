# Dockerfile
#
# docker run --rm -p 127.0.0.1:1337:1337 nozeio/echozd
#
# A Swift Docker setup for RaspberryPi which includes Noze.io.
#
# The setup is a little stupid, we should compile the sources outside of the
# image and add a binary tarball. But well.
#
FROM helje5/rpi-swift-dev:3.1.0

EXPOSE 1337

RUN git clone https://github.com/NozeIO/Noze.io.git

WORKDIR /home/swift/Noze.io/
RUN git tag 0.3.99 # Hack, don't ask ;-)

WORKDIR /home/swift/Noze.io/Samples/echozd

RUN swift build

CMD [ /home/swift/Noze.io/samples/echozd/.debug/echozd ]
