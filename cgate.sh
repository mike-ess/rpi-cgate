#!/bin/sh

# Copy (read only) project file from outside the container,
# into the container in the correct location
cp /clipsal/tag/MY-HOME.xml /clipsal/cgate/tag/MY-HOME.xml

# There is a dependency on another docker container running with name SER2SOCK.
# We need to know its IP address so we can configure C-Gate properly.
# These echo statements are merely here to help with troubleshooting.
echo "IP Address  = ${SER2SOCK_PORT_10001_TCP_ADDR}"
echo "Port Number = ${SER2SOCK_PORT_10001_TCP_PORT}"

# Configure C-Gate to connect to ser2sock on the correct IP Address and Port
perl -i'.backup' -p -e \
"s/"\
"<Interface><InterfaceType>.*<\/InterfaceType><InterfaceAddress>.*<\/InterfaceAddress><\/Interface>"\
"/"\
"<Interface><InterfaceType>cni<\/InterfaceType><InterfaceAddress>${SER2SOCK_PORT_10001_TCP_ADDR}:${SER2SOCK_PORT_10001_TCP_PORT}<\/InterfaceAddress><\/Interface>"\
"/gi"\
  /clipsal/cgate/tag/MY-HOME.xml

# Start C-Gate
cd /clipsal/cgate
/usr/bin/java -Djava.library.path=/clipsal/cgate -jar /clipsal/cgate/cgate.jar
