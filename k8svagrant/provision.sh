#!/bin/sh -eux


sudo sh -c "echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories"
sudo sh -c "echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories"

sudo apk update


sudo sh -c "echo "br_netfilter" > /etc/modules-load.d/k8s.conf"
sudo modprobe br_netfilter
sudo sh -c "echo 1 > /proc/sys/net/ipv4/ip_forward"
sudo apk add cni-plugin-flannel
sudo apk add cni-plugins
sudo apk add flannel
sudo apk add flannel-contrib-cni
sudo apk add kubelet
sudo apk add kubeadm
sudo apk add kubectl
sudo apk add containerd
sudo apk add uuidgen
sudo apk add nfs-utils


sudo cat /etc/fstab 


sudo sh -c "uuidgen > /etc/machine-id"


sudo rc-update add containerd
sudo rc-update add kubelet


sudo rc-update add ntpd
sudo rc-service ntpd start
sudo rc-service containerd start

sudo ln -s /usr/libexec/cni/flannel-amd64 /usr/libexec/cni/flannel


sudo sh -c "echo "net.bridge.bridge-nf-call-iptables=1" >> /etc/sysctl.conf"
sudo sysctl net.bridge.bridge-nf-call-iptables=1