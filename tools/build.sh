#!/usr/bin/env bash

USAGE="Usage: $0 -d ubuntu_16_04 -t baremetal_0 -a x86_64 -b ubuntu_16_04-baremetal_0-dev
Required Arguments:
	-a arch      System architecture {aarch64|x86_64}
	-b branch    Destination branch to checkout (ie: distro-type-dev)
	-d distro    Operating system distro and version
	-t type      Hardware type / plan
Options:
	-u token     Packet.net auth token
	-h           This help message
	-v           Turn on verbose messages for debugging
Description: This script installs the specified OS from an image file on to one or more block devices and handles the kernel and initrd for the
underlying hardware.
"

while getopts "a:k:M:o:p:x:b:d:f:m:t:u:hv" OPTION; do
	case $OPTION in
	a) arch=$OPTARG ;;
	b) branch=$OPTARG ;;
	d) distro=$OPTARG ;;
	t) type=$OPTARG ;;
	u) token=$OPTARG ;;
	h) echo "$USAGE" && exit 0 ;;
	v) set -x ;;
	*) echo "$USAGE" && exit 1 ;;
	esac
done

set -e -o nounset -o pipefail

echo "Checking out $branch..."
git checkout -B "$branch"

echo "Create read-tree for $distro-base..."
git read-tree --prefix="$distro-base/" -u "remotes/origin/$distro-base"

if [[ ! -d "$distro-base/$arch" ]]; then
	echo "$arch doesn't exist for $distro-base! exiting..."
	exit 1
fi

echo "Create read-tree for $distro-$plan..."
# TODO figure out how to not fetch image.tar.gz since we will overwrite it anyway
git read-tree --prefix="$distro-$plan/" -u "remotes/origin/$distro-$plan"

echo "Build $distro-base with docker..."
docker build -q -t "$distro-base" "./$distro-base/$arch" >/dev/null

echo "Build $distro-$plan with docker..."
docker build -q -t "$distro-$plan" "./$distro-$plan" >/dev/null

#echo "Build branch $branch for $distro-$plan with docker..."
#docker build -q -t $distro-$plan . >/dev/null && \

echo "Save docker image"
docker save "$distro-$plan" | tools/packet-save2image >"$distro-$plan-image.tar.gz.tmp"
mv "$distro-$plan-image.tar.gz.tmp" "$distro-$plan-image.tar.gz"

## Push image_tag to Packet
