FROM project31/aarch64-centos:7

MAINTAINER David Laube <dlaube@packet.net>
LABEL Description="Packet's CentOS 7 OS base image" Vendor="Packet.net"
LABEL Version="2017.04.13.00"

ADD qemu-aarch64-static /usr/bin/qemu-aarch64-static

#RUN curl https://gist.githubusercontent.com/dlaube/722dff81744fa9f2f17d2f634317a3be/raw/d3b8fa3e511487ae390997a26cc3dfd2db1f14d9/centos7-arm-aarch64-yum-repo > /etc/yum.repos.d/CentOS-Base.repo

# Replace systemd so everything else actually works
RUN yum clean all && yum swap -y systemd-container-libs systemd-libs

RUN yum update  ${YUM_OPTS} -y && yum install ${YUM_OPTS} -y \
	audit \
	bash \
	bash-completion \
	ca-certificates \
	chrony \
	cloud-init \
	cloud-utils-growpart \
	cron \
	curl \
	device-mapper-multipath \
	dhclient \
	ethstatus \
	hwdata \
	ioping \
	iotop \
	iperf \
	iscsi-initiator-utils \
	keyutils \
	locate \
	logrotate \
	make \
	mdadm \
	mg \
	microcode_ctl \
	mtr \
	net-tools \
	NetworkManager-team \
	NetworkManager-tui \
	nmap-ncat \
	ntp \
	ntpdate \
	openssh-clients \
	openssh-server \
	openssl \
	parted \
	pciutils \
	redhat-lsb-core \
	rsync \
	rsyslog \
	screen \
	socat \
	sudo \
	sysstat \
	systemd \
	tar \
	tcpdump \
	teamd \
	tmux \
	traceroute \
	tuned \
	vim \
	wget \
	&& yum clean all

RUN systemctl enable cloud-init
RUN yum -y reinstall cracklib-dicts

RUN rm /usr/bin/qemu-aarch64-static
# vim: set tabstop=4 shiftwidth=4:
