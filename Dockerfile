FROM ubuntu_18_04-base
MAINTAINER Wes Jonas <wes.jonas@7lateral.com>
LABEL Description="Packet's ubuntu_18_04-t1.small.x86 OS image" Vendor="Packet.net"

## HW specific image modifications go in this file
RUN echo "BOP WAS HERE" > /etc/bop
