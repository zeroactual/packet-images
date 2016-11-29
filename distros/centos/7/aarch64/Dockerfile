FROM jefby/centos-arm64
MAINTAINER David Laube <dlaube@packet.net>
LABEL Description="Packet's CentOS 7 OS base image" Vendor="Packet.net" Version="1.0"

RUN curl https://gist.githubusercontent.com/dlaube/722dff81744fa9f2f17d2f634317a3be/raw/d3b8fa3e511487ae390997a26cc3dfd2db1f14d9/centos7-arm-aarch64-yum-repo > /etc/yum.repos.d/CentOS-Base.repo

# Replace systemd so everything else actually works
RUN yum clean all && yum swap -y systemd-container-libs systemd-libs

RUN yum install ${YUM_OPTS} -y \
      bash \
      bash-completion \
      ca-certificates \
      curl \
      device-mapper-multipath \
      e2fsprogs \
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
&& yum clean all

RUN wget ftp://195.220.108.108/linux/fedora-secondary/releases/22/Everything/aarch64/os/Packages/p/python-jsonpatch-1.2-5.fc22.noarch.rpm && rpm -ivh python-jsonpatch-1.2-5.fc22.noarch.rpm

RUN wget ftp://195.220.108.108/linux/fedora-secondary/releases/22/Everything/aarch64/os/Packages/p/python-prettytable-0.7.2-4.fc22.noarch.rpm && rpm -ivh python-prettytable-0.7.2-4.fc22.noarch.rpm

RUN wget ftp://195.220.108.108/linux/fedora-secondary/releases/22/Everything/aarch64/os/Packages/c/cloud-init-0.7.6-3.fc22.aarch64.rpm && rpm -ivh cloud-init-0.7.6-3.fc22.aarch64.rpm
