FROM ubuntu_18_04-base
MAINTAINER David Laube <dlaube@packet.net>
LABEL Description="Packet's ubuntu_18_04-t1.small.x86 OS image" Vendor="7 Lateral"

## HW specific image modifications go in this file
RUN echo "BOP WAS HERE" /etc/bop