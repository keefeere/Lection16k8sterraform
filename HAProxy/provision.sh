#!/bin/sh -eux


sudo apt-get update
sudo apt -y install haproxy
sudo cp /vagrant/haproxy.cfg /etc/haproxy/haproxy.cfg
