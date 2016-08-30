FROM ubuntu:14.04
MAINTAINER David Laube <dlaube@packet.net>
LABEL Description="Packet's Ubuntu 14.04 OS base image" Vendor="Packet.net" Version="1.0"


# Setup the environment
ENV DEBIAN_FRONTEND=noninteractive


# Install packages
RUN apt-get -q update && \
    apt-get -y -qq upgrade && \
    apt-get install -y -qq \
	bash \
	bash-completion \
	bc \
	biosdevname \
	ca-certificates \
	cron \
	curl \
	dbus \
	dstat \
	ethstatus \
	file \
	fio \
	haveged \
	htop \
	ioping \
	iotop \
	iperf \
	iptables \
	iputils-ping \
	less \
	locate \
	lsb-release \
	lsof \
	make \
	man-db \
	mdadm \
	mg \
	mosh \
	nano \
	net-tools \
	netcat \
	nmap \
	ntp \
	ntpdate \
	python-apt \
	python-yaml \
	rsync \
	rsyslog \
	screen \
	shunit2 \
	socat \
	ssh \
	sudo \
	sysstat \
	tar \
	tcpdump \
	tmux \
	uuid-runtime \
	vim \
	wget \
	software-properties-common \
	unattended-upgrades \
	open-iscsi \
	multipath-tools \
	cloud-init \
	mtr \
	traceroute \
	ifenslave \
	apt-transport-https \
	&& apt-get clean


# Configure locales
RUN locale-gen en_US.UTF-8 && \
    dpkg-reconfigure locales


# Fix permissions
RUN chown root:syslog /var/log \
 && chmod 755 /etc/default

