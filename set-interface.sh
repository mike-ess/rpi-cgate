#!/bin/bash

perl -i'.backup' -p -e \
"s/"\
"<Interface><InterfaceType>.*<\/InterfaceType><InterfaceAddress>.*<\/InterfaceAddress><\/Interface>"\
"/"\
"<Interface><InterfaceType>cni<\/InterfaceType><InterfaceAddress>127.0.0.1:10001<\/InterfaceAddress><\/Interface>"\
"/gi"\
  /clipsal/cgate/tag/MY-HOME.xml
