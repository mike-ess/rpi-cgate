#!/bin/sh

# Copy (read only) project file from outside the container,
# into the container in the correct location
cp /clipsal/original-project/MY-HOME.xml /clipsal/cgate/tag/MY-HOME.xml

# Modify the project file as required.
/clipsal/set-interface.sh

# Start C-Gate
cd /clipsal/cgate
/usr/bin/java -Djava.library.path=/clipsal/cgate -jar /clipsal/cgate/cgate.jar
