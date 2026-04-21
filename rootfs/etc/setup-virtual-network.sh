#!/bin/sh

chmod 0666 /dev/net/tun

# Create TAP devices
ip tuntap add dev tap0 mode tap

# Create bridge
ip link add name bao-br0 type bridge
ip addr add 192.168.1.10/24 dev bao-br0

# Add interfaces to bridge
ip link set dev eth0 master bao-br0
ip link set dev tap0 master bao-br0

# Bring up bridge and member interfaces
ip link set dev bao-br0 up
ip link set dev eth0 up
ip link set dev tap0 up
