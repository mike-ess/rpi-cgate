# rpi-java8

A Docker image, intended for running Clipsal C-Gate software on a Raspberry Pi, to drive a C-Bus home automation system.

## Authors

* **Mike Ess** - *Created code for creating a Docker Image* - Get the built image at https://hub.docker.com/r/mikeess/rpi-cgate/

## Prerequisites

Ensure ser2sock is running in a Docker container before you start this container. The dependency is in the `--link ser2sock` parameter in the deployment instructions.

https://hub.docker.com/r/mikeess/rpi-ser2sock/ 

## Deployment

You will need to have a *project file* for C-Gate. This contains the configuration for your C-Bus system. If you do not have this already, then you may need to ask your C-Bus installer for a copy of this file.

If you have C-Gate running elsewhere (e.g. on a PC or laptop) then this file may be found at `[path to C-Gate software]\tag`.

```
# Pull the Docker image from Docker Hub.
docker pull mikeess/rpi-cgate/

# Put your C-Gate project file in the necessary location.
mkdir /clipsal/tag
cp /path/to/your/cgate/project/file/projectfile.XML /clipsal/tag/MY-HOME.xml

# To run the Docker Container interactive:
docker run --name=cgate -i -t -p 127.0.0.1:20023:20023 --expose 20023 --volume=/clipsal/tag:/clipsal/tag:ro --link ser2sock mikeess/rpi-cgate

# To run the Docker Container as daemon (recommended):
docker run --name=cgate -d -p 127.0.0.1:20023:20023 --expose 20023 --volume=/clipsal/tag:/clipsal/tag:ro --link ser2sock mikeess/rpi-cgate
```
