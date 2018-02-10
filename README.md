# rpi-cgate

## Introduction

A Docker image, intended for running **Clipsal C-Gate** software on a Raspberry Pi.

## About This Image

This is part of a set of images, intended for running software on a Raspberry Pi, to control a C-Bus home automation system.

Please refer to the [main README](https://github.com/mike-ess/rpi-clipsal-cbus-main/blob/master/README.md), for more information and instructions on how to deploy.

The Docker image may be found at <https://hub.docker.com/r/mikeess/rpi-cgate/>. This image is built automatically from this GitHub repository.

## What You Need To Know

You need to 

Look inside the cgate directory of this repository, to see what version of C-Gate is included in this Docker image.

It is possible you may only require use of rpi-ser2sock and rpi-cgate, and then intend to write your own code to interface with C-Gate. That is completely fine.

## Installation

Please refer to the [main README](https://github.com/mike-ess/rpi-clipsal-cbus-main/blob/master/README.md), for more information and instructions on how to deploy.

## Dependencies

This Docker image has a dependency on the [mikeess/rpi-ser2sock image](https://github.com/mike-ess/rpi-ser2sock) image. Ensure ser2sock is running in a Docker container before you start this container.

## Authors

* **Mike Ess** - *Wrote code for creating a Docker Image* - Get the built image at https://hub.docker.com/r/mikeess/rpi-cgate/

