FROM multiarch/centos:7.2.1511-amd64-clean
MAINTAINER David Laube <dlaube@packet.net>
LABEL Description="Packet's CentOS 7 OS base image" Vendor="Packet.net" Version="1.0"

RUN yum install ${YUM_OPTS} -y \
      bash \
      bash-completion \
      ca-certificates \
      cron \
      curl \
      ethstatus \
      ioping \
      iotop \
      iperf \
      locate \
      make \
      mdadm \
      mg \
      ntp \
      ntpdate \
      rsync \
      screen \
      socat \
      ssh \
      sudo \
      sysstat \
      systemd \
      tar \
      tcpdump \
      tmux \
      vim \
      wget \
      redhat-lsb-core \
      net-tools \
      mtr \
      traceroute \
      nmap-ncat \
      teamd \
      cloud-init \
      NetworkManager-team \
      NetworkManager-tui \
      iscsi-initiator-utils \
      device-mapper-multipath \
 && yum clean all

