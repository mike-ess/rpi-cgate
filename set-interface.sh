#!/bin/bash

# Modify the project file so it will use "cni" or in other words, network connection
# which is intended to be ser2sock on port 10001.
perl -i'.backup' -p -e \
"s/"\
"<Interface><InterfaceType>.*<\/InterfaceType><InterfaceAddress>.*<\/InterfaceAddress><\/Interface>"\
"/"\
"<Interface><InterfaceType>cni<\/InterfaceType><InterfaceAddress>127.0.0.1:10001<\/InterfaceAddress><\/Interface>"\
"/gi"\
  /clipsal/cgate/tag/MYHOME.xml
