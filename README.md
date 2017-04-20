<h2>Noze.io
  <img src="https://pbs.twimg.com/profile_images/725354235056017409/poiNAOlB_400x400.jpg"
       align="right" />
</h2>

![Swift3](https://img.shields.io/badge/swift-3-blue.svg)
![macOS](https://img.shields.io/badge/os-macOS-green.svg?style=flat)
![iOS](https://img.shields.io/badge/os-iOS-green.svg?style=flat)
![tuxOS](https://img.shields.io/badge/os-tuxOS-green.svg?style=flat)
![Travis](https://api.travis-ci.org/NozeIO/Noze.io.svg?branch=develop&style=flat)

"Das Haus das Verrückte macht."

**Noze.io** is an attempt to carry over the [Node.js](http://nodejs.org/)
ideas into *pure* [Swift](http://swift.org).
It uses [libdispatch](https://github.com/apple/swift-corelibs-libdispatch)
for event-driven, non-blocking I/O.
**Noze.io** is built around type-safe back-pressure aware pull-streams
(using Swift generics)
operating on batches of items. Instead of just operating on bytes,
operate on batches of Unicode lines or database records or HTML
responses or - you get the idea.
Be efficient: Stream everything and ßatch.

# Dockerfiles

This currently has a dockerfile for building Noze.io on a RaspberryPi.
Checkout the todomvc example package for a regular Docker compose setup.
