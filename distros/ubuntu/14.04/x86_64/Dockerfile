FROM quay.io/packet/images:ubuntu_14_04-base0
MAINTAINER David Laube <dlaube@packet.net>
LABEL Description="Packet's Ubuntu 14.04 OS base image" Vendor="Packet.net" Version="1.0"

# Setup the environment
ENV DEBIAN_FRONTEND=noninteractive

# Install packages
RUN apt-get -q update && \
	apt-get -y -qq upgrade && \
	apt-get install -y -qq \
		apt-transport-https \
		bash \
		bash-completion \
		bc \
		biosdevname \
		ca-certificates \
		cloud-init \
		cron \
		curl \
		dbus \
		dialog \
		dstat \
		ethstatus \
		file \
		fio \
		haveged \
		htop \
		ifenslave \
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
		mtr \
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
		shunit2 \
		socat \
		software-properties-common \
		ssh \
		sudo \
		sysstat \
		tar \
		tcpdump \
		tmux \
		traceroute \
		unattended-upgrades \
		uuid-runtime \
		vim \
		wget \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/log/*

# Configure locales
RUN locale-gen en_US.UTF-8 && \
	dpkg-reconfigure locales

# Fix permissions
RUN chown root:syslog /var/log \
	&& chmod 755 /etc/default

# vim: set tabstop=4 shiftwidth=4:
