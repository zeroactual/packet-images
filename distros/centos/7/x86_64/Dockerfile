FROM centos:7
MAINTAINER David Laube <dlaube@packet.net>
LABEL Description="Packet's CentOS 7 OS base image" Vendor="Packet.net"
LABEL Version="2018.01.25.00"

RUN yum update  ${YUM_OPTS} -y && \
	yum install ${YUM_OPTS} -y \
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
	nmap-ncat \
	ntp \
	ntpdate \
    NetworkManager-team \
    NetworkManager-tui \
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

# Remove default eth0 dhcp config
RUN rm -f /etc/sysconfig/network-scripts/ifcfg-eth0

# Install a specific kernel and deps
RUN yum -y install kernel-3.10.0-693.11.6.el7 microcode linux-firmware grub2-efi grub2 efibootmgr

# Adjust generic initrd
RUN dracut --filesystems="ext4 vfat" --mdadmconf --force /boot/initramfs-3.10.0-693.11.6.el7.x86_64.img 3.10.0-693.11.6.el7.x86_64

# Adjust root account
RUN passwd -d root && passwd -l root

# vim: set tabstop=4 shiftwidth=4:
