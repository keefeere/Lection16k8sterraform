#!/bin/sh -eux


sudo apk update
sudo apk add haproxy
sudo cp /vagrant/haproxy.cfg /etc/haproxy/haproxy.cfg
