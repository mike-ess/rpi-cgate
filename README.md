# rpi-cgate

## Introduction

A Docker image, intended for running [**Clipsal C-Gate**](http://www2.clipsal.com/cis/technical/downloads/c-gate) software on a Raspberry Pi.

## About This Image

This is part of a set of images, intended for running software on a Raspberry Pi, to control a C-Bus home automation system.

Please refer to the [main README](https://github.com/mike-ess/rpi-clipsal-cbus-main/blob/master/README.md), for more information and instructions on how to deploy.

The Docker image may be found at <https://hub.docker.com/r/mikeess/rpi-cgate/>. This image is built automatically from this GitHub repository.

## What You Need To Know

This image is built on the assumption you already have a C-Gate project file. This project file will have been created by your installer or electrician when C-Bus was installed and configured using the [C-Bus Toolkit](http://www2.clipsal.com/cis/technical/downloads/c-bus_toolkit) software. As part of installation on your Raspberry Pi, you will provide a *copy* of that file on your Raspberry Pi to C-Gate for read-only purposes. Keep your original project file safe, and treat it as your master copy.

It is *not* recommended that you use C-Bus Toolkit to connect to C-Gate on your Raspberry Pi for configuration of your C-Bus system. any configuration should still be done using C-Bus Toolkit on another machine (e.g. a Windows based laptop), and then take the updated project file and place it on the Raspberry Pi and restart the C-Gate software.

To see what version of C-Gate is included in this Docker image, look inside the **cgate** directory of this GitHub repository.

It is possible you may only require use of rpi-ser2sock and rpi-cgate, and then intend to write your own code to interface with C-Gate. That is completely fine.

## Installation

Please refer to the [main README](https://github.com/mike-ess/rpi-clipsal-cbus-main/blob/master/README.md), for more information and instructions on how to deploy.

## Dependencies

This Docker image has a dependency on the [mike-ess/rpi-ser2sock image](https://github.com/mike-ess/rpi-ser2sock) image. Ensure ser2sock is running in a Docker container before you start this container.

## Authors

* **Mike Ess** - *Wrote code for creating a Docker Image* - Get the built image at https://hub.docker.com/r/mikeess/rpi-cgate/
