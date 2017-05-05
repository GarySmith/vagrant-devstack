#!/bin/sh
# This script runs as vagran user within the VM

git clone https://git.openstack.org/openstack-dev/devstack
cd devstack
cat > local.conf <<EOF
[[local|localrc]]
ADMIN_PASSWORD=password
DATABASE_PASSWORD=password
RABBIT_PASSWORD=password
SERVICE_PASSWORD=password
EOF
./stack.sh
