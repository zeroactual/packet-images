FROM opensuse:42.3
MAINTAINER David Laube <dlaube@packet.net>
LABEL Description="Packet's OpenSUSE OS base image" Vendor="Packet.net" Version="1.0"

# Upgrade distribution
RUN zypper --non-interactive dist-upgrade -y

# Install packages
RUN zypper --non-interactive install -y \
	audit \
	bash \
	bash-completion \
	ca-certificates \
	chrony \
	cloud-init \
	cron \
	curl \
	glibc-locale \
	hwdata \
	ioping \
	iotop \
	iperf \
	keyutils \
	lsb-release \
	logrotate \
	make \
	mdadm \
	mtr \
	net-tools \
	netcat \
	nmap \
	ntp \
	mlocate \
	multipath-tools \
	openssh \
	openssl \
	open-iscsi \
	parted \
	pciutils \
	rsync \
	rsyslog \
	screen \
	socat \
	sudo \
	sysstat \
	systemd \
	tar \
	tcpdump \
	tmux \
	traceroute \
	tuned \
	vim \
	wget \
	vim

# Clean package cache
RUN zypper clean --all

# Enable sshd and cloud-init services
RUN systemctl enable sshd cloud-config cloud-final cloud-init-local cloud-init

# Adjust root account
RUN passwd -d root && passwd -l root
