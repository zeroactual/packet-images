FROM debian:jessie
MAINTAINER David Laube <dlaube@packet.net>
LABEL Description="Packet's Debian Jessie OS base image" Vendor="Packet.net" Version="1.0"


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
	dialog \
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
	locales \
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
	systemd-sysv

# Assign default target
RUN systemctl set-default multi-user

# Enable update-motd.d support
RUN rm -f /etc/motd && ln -s /var/run/motd /etc/motd

# Configure locale
RUN echo "Etc/UTC" > /etc/timezone && \
    dpkg-reconfigure -f noninteractive tzdata && \
    sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    echo 'LANG="en_US.UTF-8"'>/etc/default/locale && \
    dpkg-reconfigure --frontend=noninteractive locales && \
    update-locale LANG=en_US.UTF-8

# Configure Systemd
RUN systemctl disable \
	systemd-modules-load.service \
	systemd-update-utmp-runlevel \
	proc-sys-fs-binfmt_misc.automount \
	kmod-static-nodes.service

# Replace init with systemd
RUN rm -f /sbin/init \
 && ln -sf ../lib/systemd/systemd /sbin/init


# Fix perms
RUN chmod 755 /etc/default

