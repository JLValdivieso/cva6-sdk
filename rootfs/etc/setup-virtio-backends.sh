#!/bin/sh

# Launch the VirtIO backends
nohup bao-virtio-dm --config /etc/config-virtio-vm1.yaml > /etc/bao-vm1.log 2>&1 &
