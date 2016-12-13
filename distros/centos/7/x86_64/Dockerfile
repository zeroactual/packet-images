FROM multiarch/centos:7.2.1511-amd64-clean
MAINTAINER David Laube <dlaube@packet.net>
LABEL Description="Packet's CentOS 7 OS base image" Vendor="Packet.net" Version="1.0"

RUN yum install ${YUM_OPTS} -y \
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

# vim: set tabstop=4 shiftwidth=4:
