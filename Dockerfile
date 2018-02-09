# Pull base images
FROM mikeess/rpi-java8

# C-Gate allows clients to connect on port 20023
EXPOSE 20023

# Install C-Gate
WORKDIR /clipsal
COPY cgate/cgate-2.10.5_3140.zip .
RUN unzip cgate-2.10.5_3140.zip
RUN rm cgate-2.10.5_3140.zip

# Put startup scripts in place
WORKDIR /clipsal
COPY cgate.sh .
COPY set_interface.sh .

# We allow open access from all private IP address
# spaces according to RFC1918.
WORKDIR /clipsal/cgate
RUN echo \
"# Standard C-Gate Configuration\n"\
"interface 0:0:0:0:0:0:0:1 Program\n"\
"interface 127.0.0.1 Program\n"\
"interface localhost Program\n"\
"\n"\
"# Custom Configuration\n"\
"remote 10.255.255.255 Program\n"\
"remote 192.168.255.255 Program\n"\
"remote 172.16.255.255 Program\n"\
"remote 172.17.255.255 Program\n"\
"remote 172.18.255.255 Program\n"\
"remote 172.19.255.255 Program\n"\
"remote 172.20.255.255 Program\n"\
"remote 172.21.255.255 Program\n"\
"remote 172.22.255.255 Program\n"\
"remote 172.23.255.255 Program\n"\
"remote 172.24.255.255 Program\n"\
"remote 172.25.255.255 Program\n"\
"remote 172.26.255.255 Program\n"\
"remote 172.27.255.255 Program\n"\
"remote 172.28.255.255 Program\n"\
"remote 172.29.255.255 Program\n"\
"remote 172.30.255.255 Program\n"\
"remote 172.31.255.255 Program\n"\
 > /clipsal/cgate/config/access.txt

# We leave logging enabled, but don't want to fill up disk.
WORKDIR /clipsal/cgate/logs
RUN ln -s /dev/null event.txt

WORKDIR /clipsal/cgate

ENTRYPOINT ["/clipsal/cgate.sh"]
