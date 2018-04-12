FROM opensuse:42.3
MAINTAINER David Laube <dlaube@packet.net>
LABEL Description="Packet's OpenSUSE OS base image" Vendor="Packet.net" Version="1.0"

RUN zypper --non-interactive install -y \
	audit \
	bash \
	bash-completion \
	ca-certificates \
	chrony \
	cloud-init \
	cron \
	curl \
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
	vim && \
	zypper clean --all

# Install a specific kernel and deps
RUN zypper install -y kernel-default-4.4.120-45.1.x86_64 kernel-firmware

# Adjust generic initrd
RUN dracut --filesystems="ext4 vfat" --mdadmconf --force initrd-4.4.120-45-default 4.4.120-45-default

# Adjust root account
RUN passwd -d root && passwd -l root
