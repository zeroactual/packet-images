FROM multiarch/ubuntu-debootstrap:arm64-xenial
MAINTAINER David Laube <dlaube@packet.net>
LABEL Description="Packet's Ubuntu 16.04 OS base image" Vendor="Packet.net" Version="1.0"


# Setup the environment
ENV DEBIAN_FRONTEND=noninteractive

# Install packages
RUN apt-get -q update && \
    apt-get -y -qq upgrade && \
    apt-get install -y -qq \
	bash \
	bash-completion \
	bc \
	ca-certificates \
	cron \
	curl \
	dbus \
	file \
	iptables \
	iputils-ping \
	less \
	lsb-release \
	lsof \
	make \
	man-db \
	mdadm \
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
	ifenslave \
	&& apt-get clean


# Configure locales
RUN locale-gen en_US.UTF-8 && \
    dpkg-reconfigure locales

