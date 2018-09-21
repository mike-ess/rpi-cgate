#!/bin/sh

./set-interface.sh

# Start C-Gate
cd /clipsal/cgate
/usr/bin/java -Djava.library.path=/clipsal/cgate -jar /clipsal/cgate/cgate.jar
