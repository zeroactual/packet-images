FROM project31/aarch64-centos:7
MAINTAINER David Laube <dlaube@packet.net>
LABEL Description="Packet's CentOS 7 OS base image" Vendor="Packet.net" Version="1.0"

#RUN curl https://gist.githubusercontent.com/dlaube/722dff81744fa9f2f17d2f634317a3be/raw/d3b8fa3e511487ae390997a26cc3dfd2db1f14d9/centos7-arm-aarch64-yum-repo > /etc/yum.repos.d/CentOS-Base.repo

# Replace systemd so everything else actually works
RUN yum clean all && yum swap -y systemd-container-libs systemd-libs

RUN yum install -y \
	bash \
	bash-completion \
	ca-certificates \
	curl \
	device-mapper-multipath \
	e2fsprogs \
	dosfstools \
	iscsi-initiator-utils \
	libselinux-python \
	make \
	mdadm \
	mtr \
	net-tools \
	NetworkManager-team \
	NetworkManager-tui \
	nmap-ncat \
	ntp \
	ntpdate \
	openssh-clients \
	openssh-server \
	policycoreutils-python \
	python-configobj \
	python-jsonpointer \
	python-requests \
	PyYAML \
	redhat-lsb-core \
	rsync \
	screen \
	socat \
	sudo \
	sysstat \
	tar \
	tcpdump \
	teamd \
	tmux \
	traceroute \
	vim \
	wget \
	cloud-init \
	&& yum clean all

RUN systemctl enable cloud-init
RUN yum -y reinstall cracklib-dicts
RUN yum -y update && yum clean all

# vim: set tabstop=4 shiftwidth=4:
