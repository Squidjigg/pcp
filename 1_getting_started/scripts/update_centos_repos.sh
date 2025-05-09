#!/bin/bash

if [ ! -f /root/provisioned ]; then
    # Update CentOS repositories to use vault.centos.org
    echo "INFO: Updating CentOS repositories."
    sed -i s/mirror.centos.org/vault.centos.org/g /etc/yum.repos.d/CentOS-*.repo
    sed -i s/^#.*baseurl=http/baseurl=http/g /etc/yum.repos.d/CentOS-*.repo
    sed -i s/^mirrorlist=http/#mirrorlist=http/g /etc/yum.repos.d/CentOS-*.repo
    touch /root/provisioned
fi