FROM centos:7
MAINTAINER David Laube <dlaube@packet.net>
LABEL Description="Packet's CentOS 7 OS base image" Vendor="Packet.net"
LABEL Version="2018.01.08.00"

RUN yum update  ${YUM_OPTS} -y && \
	yum install ${YUM_OPTS} -y \
	bash \
	bash-completion \
	ca-certificates \
	cloud-init \
	cron \
	curl \
	device-mapper-multipath \
	ethstatus \
	ioping \
	iotop \
	iperf \
	iscsi-initiator-utils \
	locate \
	make \
	mdadm \
	mg \
	mtr \
	net-tools \
	NetworkManager-team \
	NetworkManager-tui \
	nmap-ncat \
	ntp \
	ntpdate \
	redhat-lsb-core \
	rsync \
	screen \
	socat \
	ssh \
	sudo \
	sysstat \
	systemd \
	tar \
	tcpdump \
	teamd \
	tmux \
	traceroute \
	vim \
	wget \
	&& yum clean all

# Remove default eth0 dhcp config
RUN rm -f /etc/sysconfig/network-scripts/ifcfg-eth0

# vim: set tabstop=4 shiftwidth=4:
