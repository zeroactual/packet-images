FROM multiarch/ubuntu-debootstrap:arm64-xenial
MAINTAINER David Laube <dlaube@packet.net>
LABEL Description="Packet's Ubuntu 16.04 OS base image" Vendor="Packet.net" Version="1.0"


# Setup the environment
ENV DEBIAN_FRONTEND=noninteractive

# Temporarily set up ports repo
RUN echo "deb http://ports.ubuntu.com/ubuntu-ports xenial main restricted" >> /etc/apt/sources.list
RUN echo "deb http://ports.ubuntu.com/ubuntu-ports xenial-updates main restricted" >> /etc/apt/sources.list
RUN echo "deb http://ports.ubuntu.com/ubuntu-ports xenial universe" >> /etc/apt/sources.list
RUN echo "deb http://ports.ubuntu.com/ubuntu-ports xenial-updates universe" >> /etc/apt/sources.list
RUN echo "deb http://ports.ubuntu.com/ubuntu-ports xenial multiverse" >> /etc/apt/sources.list
RUN echo "deb http://ports.ubuntu.com/ubuntu-ports xenial-updates multiverse" >> /etc/apt/sources.list
RUN echo "deb http://ports.ubuntu.com/ubuntu-ports xenial-backports main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb http://ports.ubuntu.com/ubuntu-ports xenial-security main restricted" >> /etc/apt/sources.list
RUN echo "deb http://ports.ubuntu.com/ubuntu-ports xenial-security universe" >> /etc/apt/sources.list
RUN echo "deb http://ports.ubuntu.com/ubuntu-ports xenial-security multiverse" >> /etc/apt/sources.list


# Install packages
RUN apt-get -q update && \
    apt-get -y -qq upgrade && \
    apt-get install -y -qq \
	bash \
	bash-completion \
	bc \
	ca-certificates \
	cloud-init \
	cron \
	curl \
	dbus \
	dialog \
	file \
	ifenslave \
	iptables \
	iputils-ping \
	jq \
	less \
	lsb-release \
	lsof \
	make \
	man-db \
	mdadm \
	multipath-tools \
	nano \
	net-tools \
	netcat \
	nmap \
	ntp \
	ntpdate \
	open-iscsi \
	python-apt \
	python-yaml \
	rsync \
	rsyslog \
	screen \
	software-properties-common \
	ssh \
	sudo \
	sysstat \
	tar \
	tcpdump \
	tmux \
	unattended-upgrades \
	uuid-runtime \
	vim \
	wget \
	&& apt-get clean

# Reset apt.sources
RUN echo "" > /etc/apt/sources.list

# Configure locales
RUN locale-gen en_US.UTF-8 && \
    dpkg-reconfigure locales

